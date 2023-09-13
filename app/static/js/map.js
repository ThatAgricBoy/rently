function initMap() {
    const searchInputs = document.querySelectorAll('.search');
    const geocoder = new google.maps.Geocoder();
    const mapElement = document.getElementById('map');

    const mapOptions = {
        center: {lat: 0, lng: 0},
        zoom: 10,
    };

    const map = new google.maps.Map(mapElement, mapOptions);

    searchInputs.forEach(function (searchInput) {
        searchInput.addEventListener('keypress', function (event) {
            if (event.key === 'Enter') {
                const inputValue = searchInput.value;
                console.log('Input value:', inputValue); // Log the input value
                if(inputValue) {
                    geocodeAddress(inputValue, map);
                } else {
                    console.error('No input value provided');
                }
            }
        });
    });
}

function geocodeAddress(address, map) {
    const geocoder = new google.maps.Geocoder();
    console.log('Geocoding address:', address);
    geocoder.geocode({'address': address}, function (results, status) {
        console.log('Geocoding status:', status); // Log the status
        if (status === 'OK') {
            const location = results[0].geometry.location;
            console.log('Geocoded location:', location); // Log the geocoded location

            const marker = new google.maps.Marker({
                position: location,
                map: map,
                title: address
            });

            map.setCenter(location);
            map.setZoom(15);
        } else {
            console.error('Geocode was not successful for the following reason: ' + status);
        }
    });
}

document.addEventListener('DOMContentLoaded', initMap);
