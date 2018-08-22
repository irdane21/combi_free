function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    var combiAddress = document.getElementById('combi_address');

    if (combiAddress) {
      var autocomplete = new google.maps.places.Autocomplete(combiAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(combiAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };
