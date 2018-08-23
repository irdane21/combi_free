function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var search = document.querySelector('.search');

    if (search) {
      var autocomplete = new google.maps.places.Autocomplete(search, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(search, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
