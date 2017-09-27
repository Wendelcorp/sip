// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require formToWizard
//= require wow
//= require typed
//= require jparallax
//= require jquery-ui/core
//= require jquery-ui/datepicker
//= require jquery-ui/slider
//= require_tree .

new WOW().init();

$(function() {


    $("#booking-form").formToWizard();

    // var numberOfGuests = 0;
    // var pricePerPerson = 0;
    // type = $("#booking_bar_type").val();
    // numberOfGuests = $("#booking_guests").val();


    // var calculateTotal = function() {
    //   if (type === "One Feature") {
    //     if (numberOfGuests < 50) {
    //       pricePerPerson = 20
    //     }
    //     else if ((numberOfGuests > 50) && (numberOfGuests <= 199)) {
    //       pricePerPerson = 15
    //     }
    //     else if (numberOfGuests > 199) {
    //       pricePerPerson = 10
    //     }
    //   }
    //   else if (type === "Two Features") {
    //     if (numberOfGuests < 50) {
    //       pricePerPerson = 25
    //     }
    //     else if ((numberOfGuests > 50) && (numberOfGuests <= 199)) {
    //       pricePerPerson = 18
    //     }
    //     else if (numberOfGuests > 199) {
    //       pricePerPerson = 13
    //     }
    //   }
    //   else if (type === "Three Features") {
    //     if (numberOfGuests < 50) {
    //       pricePerPerson = 30
    //     }
    //     else if ((numberOfGuests > 50) && (numberOfGuests <= 199)) {
    //       pricePerPerson = 20
    //     }
    //     else if (numberOfGuests > 199) {
    //       pricePerPerson = 15
    //     }
    //   }
    //   total = numberOfGuests * pricePerPerson
    //   $('#current-price').html(total)
    // }
    // $("#booking_bar_type").change(function() {
    //   type = $("#booking_bar_type").val();
    //   numberOfGuests = $("#booking_guests").val();
    //   calculateTotal()
    // });
    // $("#booking_guests").change(function() {
    //   type = $("#booking_bar_type").val();
    //   numberOfGuests = $("#booking_guests").val();
    //   calculateTotal()
    // });

    function calculateNumberOfServices() {
      var numberOfServices = 0
      if (($('.select-beer').val() !== '') && ($('.select-beer').val() !== 'No beer please')) {
        numberOfServices += 1
      }
      if (($('.select-wine').val() !== '') && ($('.select-wine').val() !== 'No wine please')) {
        numberOfServices += 1
      }
      if (($('.select-spirits').val() !== '') && ($('.select-spirits').val() !== 'No spirits please')) {
        numberOfServices += 1
      }
      return numberOfServices
    }

    function calculateAddOns() {
      var addOnPrice = 0
      if ($('.select-beer').val() == 'Special Request (+$5/person)') {
        addOnPrice += 5
      }
      if ($('.select-wine').val() == 'Special Request (+$5/person)') {
        addOnPrice += 5
      }
      if ($('.select-spirits').val() == 'Special Request (+$5/person)') {
        addOnPrice += 5
      }
      return addOnPrice
    }

    function calculatePricePerPerson() {
      var numberOfGuests = $("#guests").val();
      var pricePerPerson
      var numberOfServices = calculateNumberOfServices()

      if (numberOfServices == 1) {

        if (numberOfGuests < 19) {
          pricePerPerson = 30
        } else if (numberOfGuests >= 20 && numberOfGuests < 50) {
          pricePerPerson = 20
        } else if (numberOfGuests >= 50 && numberOfGuests < 100) {
          pricePerPerson = 15
        } else if (numberOfGuests >= 100 && numberOfGuests < 150) {
          pricePerPerson = 13
        } else if (numberOfGuests >= 150 && numberOfGuests < 300) {
          pricePerPerson = 10
        } else if (numberOfGuests >= 300 && numberOfGuests < 500) {
          pricePerPerson = 8
        }

      } else if (numberOfServices == 2) {

        if (numberOfGuests < 19) {
          pricePerPerson = 35
        } else if (numberOfGuests >= 20 && numberOfGuests < 50) {
          pricePerPerson = 25
        } else if (numberOfGuests >= 50 && numberOfGuests < 100) {
          pricePerPerson = 18
        } else if (numberOfGuests >= 100 && numberOfGuests < 150) {
          pricePerPerson = 15
        } else if (numberOfGuests >= 150 && numberOfGuests < 300) {
          pricePerPerson = 13
        } else if (numberOfGuests >= 300 && numberOfGuests < 500) {
          pricePerPerson = 10
        }

      } else if (numberOfServices == 3) {

        if (numberOfGuests < 19) {
          pricePerPerson = 40
        } else if (numberOfGuests >= 20 && numberOfGuests < 50) {
          pricePerPerson = 30
        } else if (numberOfGuests >= 50 && numberOfGuests < 100) {
          pricePerPerson = 20
        } else if (numberOfGuests >= 100 && numberOfGuests < 150) {
          pricePerPerson = 18
        } else if (numberOfGuests >= 150 && numberOfGuests < 300) {
          pricePerPerson = 15
        } else if (numberOfGuests >= 300 && numberOfGuests < 500) {
          pricePerPerson = 12
        }

      }
      return pricePerPerson + calculateAddOns()
    }

    function calculateTotal() {

      var numberOfGuests = $("#guests").val();
    }

    $('form :input').change(function() {
      calculateTotal()
      console.log(calculateNumberOfServices())
      console.log("price per person " + calculatePricePerPerson())
      $('#current-price').html(calculatePricePerPerson())
    });
});
