//Place all the behaviors and hooks related to the matching controller here.
//All this logic will automatically be available in application.js.
//You can use CoffeeScript in this file: http://coffeescript.org/

// VALIDATION
$(document).ready(function(){

    $( "#signin_form" ).validate({
        rules: {
            username: {
                required: true,
                rangelength: [3, 15]
            },
            password: {
                required: true,
                rangelength: [8, 15]
            }
        }
    });

    $( "#registration_form" ).validate({
        rules: {
            username: {
                required: true,
                rangelength: [3, 15]
            },
            password: {
                required: true,
                rangelength: [8, 15]
            },
            password_confirmation: {
                equalTo: "#password",
                maxlength: 128
            },
            email: {
                required: true,
                email:true,
                maxlength: 128
            },
            name: {
                required: true,
                maxlength: 128
            },
            addresses: {
                maxlength: 256
            },
            latitude: {
                maxlength: 256,
                number: true
            },
            longitude: {
                maxlength: 256,
                number: true
            },
            digits: {
                digits: true,
                maxlength: 50
            },
            description: {
                maxlength: 256
            },
            url: {
                maxlength: 256
            },
            telephony_description:
            {
                maxlength: 50
            },
            digital_description:
            {
                maxlength: 50
            }
        }
    });
});

// FUNCTIONALITY

$addresscounter = 0;
$telephonyCounter = 0;
$digitalCounter = 0;

function addAddress()
{
    $addresscounter++;

    var clonedMapSet = $("#primary.mapset").clone();
    clonedMapSet.attr("id",$addresscounter);

    clonedMapSet.find(".map").attr("id",$addresscounter);
    clonedMapSet.find(".map").attr("name","map-"+$addresscounter);

    clonedMapSet.find(".map-address").attr("id",$addresscounter);
    clonedMapSet.find(".map-address").attr("name","map-address-"+$addresscounter);

    clonedMapSet.find(".map-lon").attr("id",$addresscounter);
    clonedMapSet.find(".map-lon").attr("name","map-lon-"+$addresscounter);

    clonedMapSet.find(".map-lat").attr("id",$addresscounter);
    clonedMapSet.find(".map-lat").attr("name","map-lat-"+$addresscounter);

    clonedMapSet.appendTo($(".mapcontainer"));

    activateMapper($addresscounter)
}

function activateMapper($currentID)
{
    $('div#'+$currentID+'.map').locationpicker({
        location: {latitude: 14.621745, longitude: 121.107015},
        radius: 10,
        inputBinding: {
            latitudeInput: $('input#'+$currentID+'.map-lat'),
            longitudeInput: $('input#'+$currentID+'.map-lon'),
            radiusInput: $('input#'+$currentID+'.map-radius'),
            locationNameInput: $('textarea#'+$currentID+'.map-address')
        }
    });
}

function deleteAddress()
{
    $('#'+$addresscounter+'.mapset').remove();
    if($addresscounter <= 0)
    {$addresscounter = 0 }
    else
    {$addresscounter--;}
}

function addTelephony()
{
    $telephonyCounter++;

    var clonedTelephonySet = $("#primary.telephonyset").clone();
    clonedTelephonySet.attr("id",$telephonyCounter);
    clonedTelephonySet.find(".digits").attr("id",$telephonyCounter);
    clonedTelephonySet.find(".digits").attr("name","digits-"+$telephonyCounter);
    clonedTelephonySet.find(".telephony_description").attr("id",$telephonyCounter);
    clonedTelephonySet.find(".telephony_description").attr("name","telephony_description-"+$telephonyCounter);
    clonedTelephonySet.appendTo($(".telephonycontainer"));
}

function deleteTelephony()
{
    $('#'+$telephonyCounter+'.telephonyset').remove();
    if($telephonyCounter <= 0)
    {$telephonyCounter = 0 }
    else
    {$telephonyCounter--;}
}

function addDigital()
{
    $digitalCounter++;

    var clonedDigitalSet = $("#primary.digitalset").clone();
    clonedDigitalSet.attr("id",$digitalCounter);
    clonedDigitalSet.find(".url").attr("id",$digitalCounter);
    clonedDigitalSet.find(".url").attr("name","url-"+$digitalCounter);
    clonedDigitalSet.find(".digital_description").attr("id",$digitalCounter);
    clonedDigitalSet.find(".digital_description").attr("name","digital_description-"+$digitalCounter);
    clonedDigitalSet.appendTo($(".digitalcontainer"));
}

function deleteDigital()
{
    $('#'+$digitalCounter+'.digitalset').remove();
    if($digitalCounter <= 0)
    {$digitalCounter = 0 }
    else
    {$digitalCounter--;}
}