from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, SubmitField, FileField, FloatField
from wtforms.fields.numeric import IntegerField
from wtforms.validators import DataRequired, Email, length, InputRequired, NumberRange
from wtforms import SelectField, TextAreaField, DecimalField
from wtforms.validators import EqualTo


class LoginForm(FlaskForm):
    email = StringField('Email', validators=[DataRequired(), Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Login')


class SignupForm(FlaskForm):
    fullName = StringField('Full Name', validators=[DataRequired()])
    email = StringField('Email Address', validators=[DataRequired(), Email()])
    password1 = PasswordField('Password', validators=[DataRequired()])
    password2 = PasswordField('Confirm Password',
                              validators=[DataRequired(), EqualTo('password1', message='Passwords must match')])
    submit = SubmitField('Sign Up')


state_lga_mapping = {
    'Oyo': ["Afijio", "Akinyele", "Atiba", "Atisbo", "Egbeda", "Ibadan North", "Ibadan North-East", "Ibadan North-West",
            "Ibadan South-East", "Ibadan South-West", "Ibarapa Central", "Ibarapa East", "Ibarapa North", "Ido",
            "Irepo", "Iseyin", "Itesiwaju", "Iwajowa", "Kajola", "Lagelu", "Ogbomoso North", "Ogbomoso South",
            "Ogo Oluwa", "Oluyole", "Ona Ara", "Orelope", "Ori Ire", "Oyo East", "Oyo West", "Saki East",
            "Saki West", "Surulere"],
    'Abuja': ["Central Business District", "Garki", "Wuse", "Maitama", "Asokoro", "Utako", "Jabi",
              "Gwarimpa", "Karu", "Kubwa", "Nyanya"],
    'Abia': ["Aba North", "Aba South", "Arochukwu", "Bende", "Ikwuano", "Isiala Ngwa North", "Isiala Ngwa South",
             "Isuikwuato", "Obingwa", "Ohafia", "Osisioma Ngwa", "Ugwunagbo", "Ukwa East", "Ukwa West",
             "Umuahia North", "Umuahia South", "Umu Nneochi"],
    'Adamawa': ["Demsa", "Fufore", "Ganye", "Girei", "Gombi", "Guyuk", "Hong", "Jada", "Lamurde", "Madagali",
                "Maiha", "Mayo-Belwa", "Michika", "Mubi North", "Mubi South", "Numan", "Shelleng", "Song",
                "Toungo", "Yola North", "Yola South"],
    'Akwa Ibom': ["Abak", "Eastern Obolo", "Eket", "Esit Eket", "Essien Udim", "Etim Ekpo", "Etinan", "Ibeno",
                  "Ibesikpo Asutan", "Ibiono Ibom", "Ika", "Ikono", "Ikot Abasi", "Ikot Ekpene", "Ini", "Itu",
                  "Mbo", "Mkpat Enin", "Nsit Atai", "Nsit Ibom", "Nsit Ubium", "Obot Akara", "Okobo", "Onna",
                  "Oron", "Oruk Anam", "Ukanafun", "Udung Uko", "Uruan", "Urue-Offong/Oruko", "Uyo"],
    'Anambra': ["Aguata", "Anambra East", "Anambra West", "Anaocha", "Awka North", "Awka South", "Ayamelum",
                "Dunukofia", "Ekwusigo", "Idemili North", "Idemili South", "Ihiala", "Njikoka", "Nnewi North",
                "Nnewi South", "Ogbaru", "Onitsha North", "Onitsha South", "Orumba North", "Orumba South", "Oyi"],
    'Bauchi': ["Alkaleri", "Bauchi", "Bogoro", "Darazo", "Dass", "Gamawa", "Ganjuwa", "Giade", "Itas/Gadau",
               "Jama'are", "Katagum", "Kirfi", "Misau", "Ningi", "Shira", "Tafawa Balewa", "Toro", "Warji",
               "Zaki"],
    'Bayelsa': ["Brass", "Ekeremor", "Kolokuma/Opokuma", "Nembe", "Ogbia", "Sagbama", "Southern Ijaw",
                "Yenagoa"],
    'Benue': ["Ado", "Agatu", "Apa", "Buruku", "Gboko", "Guma", "Gwer East", "Gwer West", "Katsina-Ala",
              "Konshisha", "Kwande", "Logo", "Makurdi", "Obi", "Ogbadibo", "Ohimini", "Oju", "Okpokwu",
              "Otukpo", "Tarka", "Ukum", "Ushongo", "Vandeikya"],
    'Borno': ["Abadam", "Askira/Uba", "Bama", "Bayo", "Biu", "Chibok", "Damboa", "Dikwa", "Gubio", "Guzamala",
              "Gwoza", "Hawul", "Jere", "Kaga", "Kala/Balge", "Konduga", "Kukawa", "Kwaya Kusar", "Mafa",
              "Magumeri", "Maiduguri", "Marte", "Mobbar", "Monguno", "Ngala", "Nganzai", "Shani"],
    'Cross River': ["Abi", "Akamkpa", "Akpabuyo", "Bakassi", "Bekwarra", "Biase", "Boki", "Calabar Municipal",
                    "Calabar South", "Etung", "Ikom", "Obanliku", "Obubra", "Obudu", "Odukpani", "Ogoja",
                    "Yakuur", "Yakurr", "Yala"],
    'Delta': ["Aniocha North", "Aniocha South", "Bomadi", "Burutu", "Ethiope East", "Ethiope West", "Ika North East",
              "Ika South", "Isoko North", "Isoko South", "Ndokwa East", "Ndokwa West", "Okpe", "Oshimili North",
              "Oshimili South", "Patani", "Sapele", "Udu", "Ughelli North", "Ughelli South", "Ukwuani", "Uvwie",
              "Warri North", "Warri South", "Warri South West"],
    'Ebonyi': ["Abakaliki", "Afikpo North", "Afikpo South", "Ebonyi", "Ezza North", "Ezza South", "Ikwo", "Ishielu",
               "Ivo", "Izzi", "Ohaozara", "Ohaukwu", "Onicha"],
    'Edo': ["Akoko-Edo", "Egor", "Esan Central", "Esan North-East", "Esan South-East", "Esan West",
            "Etsako Central", "Etsako East", "Etsako West", "Igueben", "Ikpoba-Okha", "Oredo", "Orhionmwon",
            "Ovia North-East", "Ovia South-West", "Owan East", "Owan West", "Uhunmwonde"],
    'Ekiti': ["Ado Ekiti", "Efon", "Ekiti East", "Ekiti South-West", "Ekiti West", "Emure", "Ido-Osi", "Ijero",
              "Ikere", "Ikole", "Ilejemeje", "Irepodun/Ifelodun", "Ise/Orun", "Moba", "Oye"],

    'Enugu': ["Aninri", "Awgu", "Enugu East", "Enugu North", "Enugu South", "Ezeagu", "Igbo-Etiti", "Igbo-Eze North",
              "Igbo-Eze South", "Isi-Uzo", "Nkanu East", "Nkanu West", "Nsukka", "Oji River", "Udenu", "Udi",
              "Uzo-Uwani"],
    'Gombe': ["Akko", "Balanga", "Billiri", "Dukku", "Funakaye", "Gombe", "Kaltungo", "Kwami", "Nafada", "Shongom",
              "Yamaltu/Deba"],
    'Imo': ["Aboh-Mbaise", "Ahiazu-Mbaise", "Ehime-Mbano", "Ezinihitte", "Ideato North", "Ideato South", "Ihitte/Uboma",
            "Ikeduru", "Isiala Mbano", "Isu", "Mbaitoli", "Ngor Okpala", "Njaba", "Nkwerre", "Nwangele", "Obowo",
            "Oguta", "Ohaji/Egbema", "Okigwe", "Onuimo", "Orlu", "Orsu", "Oru East", "Oru West", "Owerri Municipal",
            "Owerri North", "Owerri West"],
    'Jigawa': ["Auyo", "Babura", "Biriniwa", "Birnin Kudu", "Buji", "Dutse", "Gagarawa", "Garki", "Gumel", "Guri",
               "Gwaram", "Gwiwa", "Hadejia", "Jahun", "Kafin Hausa", "Kaugama", "Kazaure", "Kiri Kasama", "Kiyawa",
               "Maigatari", "Malam Madori", "Miga", "Ringim", "Roni", "Sule Tankarkar", "Taura", "Yankwashi"],
    'Kaduna': ["Birnin Gwari", "Chikun", "Giwa", "Igabi", "Ikara", "Jaba", "Jema'a", "Kachia", "Kaduna North",
               "Kaduna South", "Kagarko", "Kajuru", "Kaura", "Kauru", "Kubau", "Kudan", "Lere", "Makarfi",
               "Sabon Gari", "Sanga", "Soba", "Zangon Kataf", "Zaria"],
    'Kano': ["Ajingi", "Albasu", "Bagwai", "Bebeji", "Bichi", "Bunkure", "Dala", "Dambatta", "Dawakin Kudu",
             "Dawakin Tofa", "Doguwa", "Fagge", "Gabasawa", "Garko", "Garun Mallam", "Gaya", "Gezawa", "Gwale",
             "Gwarzo", "Kabo", "Kano Municipal", "Karaye", "Kibiya", "Kiru", "Kumbotso", "Kunchi", "Kura", "Madobi",
             "Makoda", "Minjibir", "Nasarawa", "Rano", "Rimin Gado", "Rogo", "Shanono", "Sumaila", "Takai", "Tarauni",
             "Tofa", "Tsanyawa", "Tudun Wada", "Ungogo", "Warawa", "Wudil"],
    'Katsina': ["Bakori", "Batagarawa", "Batsari", "Baure", "Bindawa", "Charanchi", "Danja", "Dandume", "Danmusa",
                "Daura", "Dutsi", "Dutsin-Ma", "Faskari", "Funtua", "Ingawa", "Jibia", "Kafur", "Kaita", "Kankara",
                "Kankia", "Katsina", "Kurfi", "Kusada", "Mai'Adua", "Malumfashi", "Mani", "Mashi", "Matazu",
                "Musawa", "Rimi", "Sabuwa", "Safana", "Sandamu", "Zango"],
    'Kebbi': ["Aleiro", "Arewa Dandi", "Argungu", "Augie", "Bagudo", "Birnin Kebbi", "Bunza", "Dandi", "Danko/Wasagu",
              "Fakai", "Gwandu", "Jega", "Kalgo", "Koko/Besse", "Maiyama", "Ngaski", "Sakaba", "Shanga",
              "Suru", "Danko/Wasagu", "Yauri"],
    'Kogi': ["Adavi", "Ajaokuta", "Ankpa", "Bassa", "Dekina", "Ibaji", "Idah", "Igalamela-Odolu", "Ijumu",
             "Kabba/Bunu", "Koton Karfe", "Lokoja", "Mopa-Muro", "Ofu", "Ogori/Magongo", "Okehi", "Okene",
             "Olamaboro", "Omala", "Yagba East", "Yagba West"],
    'Kwara': ["Asa", "Baruten", "Edu", "Ekiti", "Ifelodun", "Ilorin East", "Ilorin South", "Ilorin West",
              "Irepodun", "Isin", "Kaiama", "Moro", "Offa", "Oke Ero", "Oyun", "Pategi"],
    'Lagos': ["Agege", "Ajeromi-Ifelodun", "Alimosho", "Amuwo-Odofin", "Apapa", "Badagry", "Epe", "Eti-Osa",
              "Ibeju-Lekki", "Ifako-Ijaiye", "Ikeja", "Ikorodu", "Kosofe", "Lagos Island", "Lagos Mainland",
              "Mushin", "Ojo", "Oshodi-Isolo", "Shomolu", "Surulere"],
    'Nasarawa': ["Akwanga", "Awe", "Doma", "Karu", "Keana", "Keffi", "Kokona", "Lafia", "Nasarawa",
                 "Nassarawa-Eggon", "Obi", "Toto", "Wamba"],
    'Niger': ["Agaie", "Agwara", "Bida", "Borgu", "Bosso", "Chanchaga", "Edati", "Gbako", "Gurara", "Katcha",
              "Kontagora", "Lapai", "Lavun", "Magama", "Mariga", "Mashegu", "Mokwa", "Munya", "Paikoro", "Rafi",
              "Rijau", "Shiroro", "Suleja", "Tafa", "Wushishi"],
    'Ogun': ["Abeokuta North", "Abeokuta South", "Ado-Odo/Ota", "Ewekoro", "Ifo", "Ijebu East", "Ijebu North",
             "Ijebu North East", "Ijebu Ode", "Ikenne", "Imeko Afon", "Ipokia", "Obafemi Owode", "Odeda",
             "Odogbolu", "Remo North", "Sagamu", "Yewa North", "Yewa South", "Ogun Waterside"],
    'Ondo': ["Akoko North-East", "Akoko North-West", "Akoko South-East", "Akoko South-West", "Akure North",
             "Akure South", "Ese Odo", "Idanre", "Ifedore", "Ilaje", "Ile Oluji/Okeigbo", "Irele", "Odigbo",
             "Okitipupa", "Ondo East", "Ondo West", "Ose", "Owo"],
    'Osun': ["Atakumosa East", "Atakumosa West", "Ayedaade", "Ayedire", "Boluwaduro", "Boripe", "Ede North",
             "Ede South", "Egbedore", "Ejigbo", "Ife Central", "Ife East", "Ife North", "Ife South", "Ifedayo",
             "Ifelodun", "Ila", "Ilesa East", "Ilesa West", "Irepodun", "Irewole", "Isokan", "Iwo", "Obokun",
             "Odo Otin", "Ola Oluwa", "Olorunda", "Oriade", "Orolu", "Osogbo"],
    'Plateau': ["Barkin Ladi", "Bassa", "Bokkos", "Jos East", "Jos North", "Jos South", "Kanam", "Kanke",
                "Langtang North", "Langtang South", "Mangu", "Mikang", "Pankshin", "Qua'an Pan", "Riyom",
                "Shendam", "Wase"],
    'Rivers': ["Abua/Odual", "Ahoada East", "Ahoada West", "Akuku-Toru", "Andoni", "Asari-Toru", "Bonny",
               "Degema", "Eleme", "Emohua", "Etche", "Gokana", "Ikwerre", "Khana", "Obio/Akpor", "Ogba/Egbema/Ndoni",
               "Ogu/Bolo", "Okrika", "Omuma", "Opobo/Nkoro", "Oyigbo", "Port Harcourt", "Tai"],
    'Sokoto': ["Binji", "Bodinga", "Dange Shuni", "Gada", "Goronyo", "Gudu", "Gwadabawa", "Illela", "Isa",
               "Kebbe", "Kware", "Rabah", "Sabon Birni", "Shagari", "Silame", "Sokoto North", "Sokoto South",
               "Tambuwal", "Tangaza", "Tureta", "Wamako", "Wurno", "Yabo"],
    'Taraba': ["Ardo Kola", "Bali", "Donga", "Gashaka", "Gassol", "Ibi", "Jalingo", "Karim Lamido", "Kurmi",
               "Lau", "Sardauna", "Takum", "Ussa", "Wukari", "Yorro", "Zing"],
    'Yobe': ["Bade", "Bursari", "Damaturu", "Fika", "Fune", "Geidam", "Gujba", "Gulani", "Jakusko", "Karasuwa",
             "Machina", "Nangere", "Nguru", "Potiskum", "Tarmuwa", "Yunusari", "Yusufari"],
    'Zamfara': ["Anka", "Bakura", "Birnin Magaji/Kiyaw", "Bukkuyum", "Bungudu", "Chafe", "Gummi", "Gusau",
                "Kaura Namoda", "Maradun", "Maru", "Shinkafi", "Talata Mafara", "Zurmi"]
}


def populate_lga_choices(state):
    return [(lga, lga) for lga in state_lga_mapping.get(state, [])]


class PropertyForm(FlaskForm):
    first_name = StringField('First Name', validators=[DataRequired()])
    last_name = StringField('Last Name', validators=[DataRequired()])
    phone_number = StringField('Phone Number', validators=[DataRequired()])
    landlord_name = StringField('Address', validators=[DataRequired()])
    property_type = SelectField('Property Type',
                                choices=[('duplex', 'Duplex'), ('bungalow', 'Bungalow'), ('apartment', 'Apartment')],
                                validators=[InputRequired()])
    number_of_beds = SelectField('Number of Beds',
                                 choices=[('selfcontain', 'Self-Contain'), ('1', '1'), ('2', '2'), ('3', '3'),
                                          ('4', '4'), ('5', '5'), ('other', 'Other')], validators=[InputRequired()])
    location = StringField('Property Address', validators=[DataRequired()])
    state = SelectField('State',
                        choices=[('--Not Specified--', '--Not Specified--'), ('Oyo', 'Oyo'), ('Abuja', 'Abuja'),
                                 ('Abia', 'Abia'), ('Adamawa', 'Adamawa'), ('Akwa Ibom', 'Akwa Ibom'),
                                 ('Anambra', 'Anambra'), ('Bauchi', 'Bauchi'), ('Bayelsa', 'Bayelsa'),
                                 ('Benue', 'Benue'), ('Borno', 'Borno'),
                                 ('Cross River', 'Cross River'), ('Delta', 'Delta'), ('Ebonyi', 'Ebonyi'),
                                 ('Edo', 'Edo'), ('Ekiti', 'Ekiti'),
                                 ('Enugu', 'Enugu'), ('Gombe', 'Gombe'), ('Imo', 'Imo'), ('Jigawa', 'Jigawa'),
                                 ('Kaduna', 'Kaduna'), ('Kano', 'Kano'),
                                 ('Katsina', 'Katsina'), ('Kebbi', 'Kebbi'), ('Kogi', 'Kogi'), ('Kwara', 'Kwara'),
                                 ('Lagos', 'Lagos'),
                                 ('Nasarawa', 'Nasarawa'), ('Niger', 'Niger'), ('Ogun', 'Ogun'), ('Ondo', 'Ondo'),
                                 ('Osun', 'Osun'),
                                 ('Plateau', 'Plateau'), ('Rivers', 'Rivers'), ('Sokoto', 'Sokoto'),
                                 ('Taraba', 'Taraba'),
                                 ('Yobe', 'Yobe'), ('Zamfara', 'Zamfara')], validators=[InputRequired()])
    lga = SelectField('Local Government Area', choices=[], validators=[InputRequired()])
    street = StringField('Street Name')
    price = DecimalField('Price', validators=[InputRequired(), NumberRange(min=100000, max=1000000)])
    youtube_links = TextAreaField('Youtube Video Links')
    image_upload = FileField('Upload Images')
    submit = SubmitField('Submit')

    def __init__(self, *args, **kwargs):
        super(PropertyForm, self).__init__(*args, **kwargs)
        self.state.choices = [(state, state) for state in state_lga_mapping.keys()]
        self.lga.choices = populate_lga_choices(self.state.data)


class SearchForm(FlaskForm):
    desired_location = StringField('Desired Location')
    number_of_beds = IntegerField('Number of Beds')
    lga = StringField('LGA')
    price = FloatField('Price')
    street_name = StringField('Street Name')
    generic_search = StringField('Generic Search')
    property_type = SelectField('Property Type', choices=[('duplex', 'Duplex'), ('bungalow', 'Bungalow'), ('apartment', 'Apartment')])
    submit = SubmitField('Search')
