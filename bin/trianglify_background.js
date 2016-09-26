#!/usr/bin/env node

var fs = require('fs');
var Trianglify = require('trianglify');

var t = new Trianglify({
    noiseIntensity: 0.9, 
    cellpadding: 30, 
    cellsize: 170});
var image_data = t.generate(1920, 1080).svgString;

// now we need to lowercase PATH and SVG tags
image_data = image_data.split('PATH').join('path')
image_data = image_data.split('SVG').join('svg')

fs.writeFile('/home/visgean/.trianglify_background.svg', image_data, function(err) {
    if(err) {
        console.log(err);
    }
}); 