const priceInput = document.getElementById('price');
const priceOutput = document.getElementById('price-output');

priceInput.addEventListener('input', () => {
    const price = priceInput.value;
    priceOutput.textContent = `N${price.toLocaleString()}`;
});


document.addEventListener('DOMContentLoaded', function() {
    populateStates();
    document.getElementById('state').addEventListener('change', updateLGAs);
});

// Function to populate the states dropdown
function populateStates() {
    fetch('/get_states')
        .then(response => response.json())
        .then(data => {
            const stateSelect = document.getElementById('state');
            stateSelect.innerHTML = ''; // Clear existing options
            data.forEach(state => {
                const option = document.createElement('option');
                option.value = state.id;
                option.textContent = state.name;
                stateSelect.appendChild(option);
            });
            // After populating states, trigger the updateLGAs function
            updateLGAs();
        });
}

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
                    option.value = lga.id;
                    option.textContent = lga.name;
                    lgaSelect.appendChild(option);
                });
            });
    } else {
        // If no state is selected, clear the LGAs dropdown
        lgaSelect.innerHTML = '';
    }
}

// Add an event listener to the state dropdown
document.getElementById('state').addEventListener('change', updateLGAs);

// Initial population of states
populateStates();
