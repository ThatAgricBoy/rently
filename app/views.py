from flask import Blueprint, render_template, flash, redirect, url_for, request, jsonify
from flask_login import login_required, current_user
from .models import Property, State, LGA
from .forms import PropertyForm, SearchForm
from . import db
import base64

views = Blueprint('views', __name__)


@views.route('/')
def index():
    form = SearchForm()

    return render_template('index.html', form=form)


@views.route('/property/create', methods=['GET', 'POST'])
@login_required
def create_property():
    form = PropertyForm()

    # Populate the state choices for the form
    form.state.choices = [(state.name, state.name) for state in State.query.all()]

    if request.method == 'POST' and form.validate_on_submit():
        try:
            # Extract form data
            first_name = form.first_name.data
            last_name = form.last_name.data
            landlord_address = form.landlord_name.data
            phone_number = form.phone_number.data
            property_type = form.property_type.data
            number_of_beds = form.number_of_beds.data
            location = form.location.data
            state_name = form.state.data  # Get the selected state name

            # Find the selected state instance
            selected_state = State.query.filter_by(name=state_name).first()

            # Get the selected LGA based on the form's LGA field
            selected_lga_id = form.lga.data
            selected_lga = LGA.query.get(selected_lga_id)

            street = form.street.data
            price = float(form.price.data)
            youtube_links = form.youtube_links.data

            image_file = form.image_upload.data

            if image_file:
                # Read binary image data
                image_data = image_file.read()

                # Create a new Property object using the form data, including the image data
                new_property = Property(
                    landlord_id=current_user.id,
                    first_name=first_name,
                    last_name=last_name,
                    phone_number=phone_number,
                    landlord_address=landlord_address,
                    property_type=property_type,
                    number_of_beds=number_of_beds,
                    location=location,
                    state=selected_state,  # Use the selected state instance
                    lga=selected_lga,  # Use the selected LGA instance
                    street=street,
                    price=price,
                    image_data=image_data,  # Store binary image data
                    youtube_links=youtube_links
                )

                # Add the Property object to the database session and commit
                db.session.add(new_property)
                db.session.commit()

                flash('Property added!', category='success')
                return redirect(url_for('views.index'))

        except Exception as e:
            # Handle any unexpected errors gracefully
            flash(f'An error occurred: {str(e)}', category='danger')

    # If there are validation errors or if the request method is GET, show the form
    return render_template('PropertyForm.html', form=form)


@views.route('/listings', methods=['GET', 'POST'])
def listings():
    form = SearchForm()

    if form.validate_on_submit():
        desired_state = form.desired_location.data
        print(f"Desired State: {desired_state}")

        # Query the database for properties based on the desired state
        properties = Property.query.filter(Property.state.ilike(desired_state)).all()
        print(f"Properties found: {properties}")

        # Encode image data as base64 for each property
        for property in properties:
            if property.image_data:
                property.image_base64 = base64.b64encode(property.image_data).decode('utf-8')
    else:
        # If it's a GET request or form not submitted, display all properties (or some default listings)
        properties = Property.query.all()

        # Encode image data as base64 for each property
        for property in properties:
            if property.image_data:
                property.image_base64 = base64.b64encode(property.image_data).decode('utf-8')

    return render_template('list.html', properties=properties, form=form)


@views.route('/get_states', methods=['GET'])
def get_states():
    states = State.query.all()
    state_list = [{'id': state.id, 'name': state.name} for state in states]
    return jsonify(state_list)


@views.route('/get_lgas/<string:state_name>', methods=['GET'])
def get_lgas(state_name):
    state = State.query.filter_by(name=state_name).first()

    if state:
        lgas = state.lgas  # Use the relationship defined in the new model
        lga_list = [{'id': lga.id, 'name': lga.name} for lga in lgas]
        return jsonify(lga_list)
    else:
        return jsonify([])
