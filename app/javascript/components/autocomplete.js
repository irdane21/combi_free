function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const search = document.querySelector('.search');

    if (search) {
      const autocomplete = new google.maps.places.Autocomplete(search, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(search, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
