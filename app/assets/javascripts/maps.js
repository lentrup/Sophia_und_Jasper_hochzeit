var custom_style = [
    {
        "featureType": "landscape.natural",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "hue": "#00d5ff"
            }
        ]
    },
    {
        "featureType": "landscape.natural.landcover",
        "elementType": "geometry.fill",
        "stylers": [
            {
                "color": "#ff0000"
            },
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "landscape.natural.terrain",
        "elementType": "all",
        "stylers": [
            {
                "color": "#ff0000"
            },
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "all",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "geometry",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    },
    {
        "featureType": "poi",
        "elementType": "labels",
        "stylers": [
            {
                "visibility": "off"
            }
        ]
    }
];


var map;
function initMap() {
  map = new google.maps.Map(document.getElementById('hochzeit_map'), {
    center: {lat: 52.680488, lng: 9.833958},
    zoom: 8,
    styles: custom_style,
  });
  var marker = new google.maps.Marker({
    position:{lat:52.67518,lng:9.84277},
    map:map,
    url: 'https://goo.gl/maps/TbigCM3Qoyp'
  });
  google.maps.event.addListener(marker, 'click', function() {
        //window.location.href = this.url;
        window.open(this.url)
  });
}

