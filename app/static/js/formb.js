// Function to update the LGAs dropdown based on the selected state
function updateLGAs() {
    const stateSelect = document.getElementById('state');
    const lgaSelect = document.getElementById('lga');
    const selectedStateId = stateSelect.value;

    if (selectedStateId) {
        fetch(`/get_lgas/${selectedStateId}`)
            .then(response => response.json())
            .then(data => {
                lgaSelect.innerHTML = ''; // Clear existing options
                data.forEach(lga => {
                    const option = document.createElement('option');
                    option.value = lga.id; // Set the option value to the LGA ID
                    option.textContent = lga.name;
                    lgaSelect.appendChild(option);
                });
            });
    } else {
        // If no state is selected, clear the LGAs dropdown
        lgaSelect.innerHTML = '';
    }
}
