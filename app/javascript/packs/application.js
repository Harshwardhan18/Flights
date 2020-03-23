// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
// require('jquery')
// $(document).on('turbolinks:load', function(){
//     $('#tickets').submit(function(e) {
//         e.preventDefault()  
//         var valuesToSubmit = $(this).serialize();
//         $.ajax({
//             type: "POST",
//             url: '/tickets', //sumbits it to the given url of the form
//             data: valuesToSubmit,
//             dataType: "HTML" // you want a difference between normal and ajax-calls, and json is standard
//         }).done(function(data){
//             console.log("success", data);
//             // $('#player-data').append(`<ul><li>${json.id}</li><li>${json.name}</li><li>${json.goal}</li></ul`);
//         });
//         return false; // prevents normal behaviour
//     }); 
// });
