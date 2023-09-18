function geocodeAddress(address, map) {
    const geocoder = new google.maps.Geocoder();
    console.log('Geocoding address:', address);
    geocoder.geocode({ 'address': address, 'region': 'NG', 'key': 'AIzaSyAcx9Iutbbu_P404pPzgoXH6GAqB2e0S5k' }, function (results, status) {
        console.log('Geocoding status:', status); // Log the status
        if (status === 'OK') {
            const location = results[0].geometry.location;
            console.log('Geocoded location:', location); // Log the geocoded location

            const marker = new google.maps.Marker({
                position: location,
                map: map,
                title: address
            });

            // Center the map on the geocoded location
            map.setCenter(location);
            map.setZoom(15);
        } else {
            console.error('Geocode was not successful for the following reason: ' + status);
        }
    });
}


document.addEventListener('DOMContentLoaded', initMap);

// Toggle mobile menu with JavaScript
const menuIcon = document.getElementById('menu-icon');
const mobileMenu = document.querySelector('.mobile-menu');

menuIcon.addEventListener('click', () => {
    mobileMenu.classList.toggle('active');
});


