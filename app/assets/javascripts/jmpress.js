// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jmpress.custom

hoverElem = null;

$(document).ready(function() {

	/*
	$("#menu li").each(function(index, elem) {
		$(elem).click(function() {
			console.log($(this).attr("data-target"));
			$('#jmpress').jmpress('goTo', $(this).attr("data-target"));
		});
	});
	*/
	
	$('#new_user_biography').on('ajax:success', function(event, data, status, xhr) {
		$.each(data.translations, function(key, value) {
			console.log(key + ' ' + value);
  	  $('#' + key + ' div.bio_translation').html(value);
		});
		
		keys = Object.keys(data.translations)
		r = Math.floor(Math.random()*keys.length);
		console.log(r);
		window.location.hash = '/' + keys[r];
	});
	
	$('*').on('mouseenter', function() { hoverElem = this; });
	
	$( "body" ).keypress(function(event) {
		console.log(event.which);
  		if (event.which == "113") { // q
  			window.location.hash="#/overview";
  		}  		
  		if (event.which == "111") { // o
  			out = "";
  			$(".step.editable").each (function (index, elem) {
  				//x = modifyTransformStyle(elem,"x");
  				//y = modifyTransformStyle(elem,"y");  				
  				//if (x != $(elem).attr("data-x") || y != $(elem).attr("data-y")) {
  					data_x = $(elem).attr("data-x");
  					data_y = $(elem).attr("data-y");
  					data_rotate = $(elem).attr("data-rotate");
  					if (typeof $(elem).attr("data-scale-x") != "undefined") $(elem).attr("data-scale", $(elem).attr("data-scale-x"));
  					data_scale = $(elem).attr("data-scale");  					
  					data_type = $(elem).attr("data-type");
  					data_slug = $(elem).attr("data-slug");
  					out += "{:type => \""+data_type+"\", :slug => \""+data_slug+"\", :x => "+data_x+", :y => "+data_y+", :rotate => "+data_rotate+", :scale => "+data_scale+"},\n";
  					//console.log( "" + $(elem).attr("id") + ": " + "data-x=\""+modifyTransformStyle(elem,"x")+"\" " + "data-y=\""+modifyTransformStyle(elem,"y")+"\"");
  				//}
  			});
  			console.log(out);
 		}
 		
		if (typeof (hoverElem) != "undefined") {
			if ($(hoverElem).hasClass("step")) elem = hoverElem;
			else elem = $(hoverElem).parents(".step").get(0);
		}
		else { console.log("no hover elem");return;}

  		if (event.which == "105") { // i
  			console.log("data-x=\""+modifyTransformStyle(elem,"x")+"\" " + "data-y=\""+modifyTransformStyle(elem,"y")+"\"");
  		}
		//elem = $(".step.active").get(0); 		
  		if (event.which == "115") { // s
  			modifyTransformStyle(elem,"x",50);
  		}  	
  		if (event.which == "97") { // a
  			modifyTransformStyle(elem,"x",-50);
  		} 
  		if (event.which == "119") { // w
  			modifyTransformStyle(elem,"y",-50);
  		}
  		if (event.which == "121") { // y
  			modifyTransformStyle(elem,"y",50);
  		}
  		if (event.which == "100") { // d
  			modifyTransformStyle(elem,"rotate",6);
  		}
  		if (event.which == "102") { // f
  			modifyTransformStyle(elem,"rotate",-6);
  		}
  		if (event.which == "101") { // e
  			modifyTransformStyle(elem,"scale-x",-0.1);
  			modifyTransformStyle(elem,"scale-y",-0.1);
  		}
  		if (event.which == "114") { // r
  			modifyTransformStyle(elem,"scale-x",0.1);
  			modifyTransformStyle(elem,"scale-y",0.1);
  		}    		
	});

});

function modifyTransformStyle(elem, param, increment)
{
	transformStyle = elem.style.webkitTransform;
	console.log(transformStyle);
	if (param == "x")       regexp = /translate3d\(([\d-]+)/;           
	if (param == "y")       regexp = /translate3d\([\d-]+px, ([\d-]+)/; 
	if (param == "rotate")  regexp = /rotateZ\(([\d-]+)/;               
	if (param == "scale-x") regexp = /scaleX\(([\d\.-]+)/;              
	if (param == "scale-y") regexp = /scaleY\(([\d\.-]+)/;              
	currentValueResult = transformStyle.match(regexp);
	if (currentValueResult == null) return false;
	currentValue = currentValueResult[1];
	if (typeof (increment) == "undefined") {
		return currentValue;
	}
	else {
		newValue = parseFloat(currentValue) + increment;
		newTransformStyle = transformStyle.replace(regexp,currentValueResult[0].substr(0, currentValueResult[0].length - currentValue.length)+newValue);
		elem.style.webkitTransform = newTransformStyle;
		$(elem).attr("data-" + param, newValue);
	}
}


