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
//= require twitter/bootstrap

$(document).ready(function() {

	$('#new_user_biography').on('ajax:success', function(event, data, status, xhr) {
		$.each(data.translations, function(key, value) {
			console.log(key + ' ' + value);
  	  $('#' + key + ' span.bio_translation').html(value);
		});		
	});
	
});


$(window).load(function() {
	//$(".code-input-wrapper").effect("highlight");
	$("#CODE").focus();
	$("#CODE").on("keyup", function() {
		v = $("#CODE").val();
		if (v.length == 2 ) {
			if (putcode(v)) $(".codes-ok").append(" "+v);
			else 			$(".codes-fail").append(" "+v);
			$("#CODE").val("");
		}
	});
});

function putcode(v) {
	f = $("form#new_user_biography");
	switch (v) {
	  case "01": putcode_set("birthplace", 1); break;
	  case "02": putcode_set("birthplace", 2); break;
	  case "03": putcode_set("birthplace", 3); break;
	  case "04": putcode_set("birthplace", 4); break;
	  
	  case "05": putcode_set("parents", 1); break;
	  case "06": putcode_set("parents", 2); break;
	  case "07": putcode_set("parents", 3); break;
	  
	  case "08": putcode_set("childhood", 1); break;
	  case "09": putcode_set("childhood", 2); break;	  
 	  case "10": putcode_set("childhood", 3); break;
	  case "11": putcode_set("childhood", 4); break;
	  
	  case "12": putcode_set("sex", 1); break;	  
	  case "13": putcode_set("sex", 2); break;	  
	  case "14": putcode_set("sex", 3); break;	
	  
	  case "15": putcode_set("youth_1", 1); break;	 
	  case "16": putcode_set("youth_1", 2); break;	 	  

	  case "17": putcode_set("youth_2", 1); break;	 
	  case "18": putcode_set("youth_2", 2); break;	 

	  case "19": putcode_set("youth_3", 1); break;	 
	  case "20": putcode_set("youth_3", 2); break;	 

	  case "21": putcode_set("youth_4", 1); break;	 
	  case "22": putcode_set("youth_4", 2); break;	 

	  case "23": putcode_set("education", 1); break;	 
	  case "24": putcode_set("education", 2); break;	
	  case "25": putcode_set("education", 3); break;	 
	  case "26": putcode_set("education", 4); break;
	  case "27": putcode_set("education", 5); break;	 
	  case "28": putcode_set("education", 6); break;

	  case "29": putcode_set("owns_boat", 1); break;	 
	  
	  case "30": putcode_set("owns_house", 1); break;	 
	  
	  case "31": putcode_set("owns_gold", 1); break;	 	  

	  case "32": putcode_set("travel", 1); break;	 
	  case "33": putcode_set("travel", 2); break;	
	  case "34": putcode_set("travel", 3); break;	 
	  case "35": putcode_set("travel", 4); break;
	  case "36": putcode_set("travel", 5); break;	 
	  case "37": putcode_set("travel", 6); break;	
	  case "38": putcode_set("travel", 7); break;
	  case "39": putcode_set("travel", 8); break;	 
	  case "40": putcode_set("travel", 9); break;	

	  case "41": putcode_set("job_changes", 1); break;	 
	  case "42": putcode_set("job_changes", 2); break;	
	  case "43": putcode_set("job_changes", 3); break;	 
	  case "44": putcode_set("job_changes", 4); break;
	  case "45": putcode_set("job_changes", 5); break;	 
	  case "46": putcode_set("job_changes", 6); break;	
	  case "47": putcode_set("job_changes", 7); break;
	  case "48": putcode_set("job_changes", 8); break;	 
	  case "49": putcode_set("job_changes", 9); break;	
	  case "50": putcode_set("job_changes", 10); break;	
	  case "51": putcode_set("job_changes", 11); break;	

	  case "52": putcode_set("romance", 1); break;	
	  case "53": putcode_set("romance", 2); break;	 
	  case "54": putcode_set("romance", 3); break;
	  case "55": putcode_set("romance", 4); break;	 
	  case "56": putcode_set("romance", 5); break;	

	  case "57": putcode_set("crisis", 1); break;	
	  case "58": putcode_set("crisis", 2); break;	 
	  case "59": putcode_set("crisis", 3); break;
	  case "60": putcode_set("crisis", 4); break;	 

	  case "61": putcode_set("hobby", 1); break;	 
	  case "62": putcode_set("hobby", 2); break;
	
	  case "63": putcode_set("religion", 1); break;	 
	  case "64": putcode_set("religion", 2); break;	
	  case "65": putcode_set("religion", 3); break;	 
	  case "66": putcode_set("religion", 4); break;
	  case "67": putcode_set("religion", 5); break;	 
	  case "68": putcode_set("religion", 6); break;

	  case "69": putcode_set("zurich", 1); break;	 
	  case "70": putcode_set("zurich", 2); break;

	  default: return false; break;
	}
	return true;
}

function putcode_set(ident, number) { // number is 1..n
	number = parseInt(number);
	elems = $("[name='user_biography["+ident+"]']");
	console.log(elems.length);
	type = elems.prop("tagName");
	if (type == "INPUT") type = $(elems.get(1)).attr("type"); // take the second because rails produces a hidden one for checkboxes first (Hack)
	console.log(type);
	switch(type) {
		case "SELECT": 
			vl = $($(elems).children("option").get(number-1)).attr("value");
			$(elems).val(vl); 
			break;
		case "radio": 
			$(elems).each(function (index, elem) {
					if (index == (number - 1)) {
						$(elem).prop("checked", true);
						}
					else {
						$(elem).prop("checked", false);
						}
				});
			break;	
		case "checkbox": 
			$(elems.get(1)).attr("checked",true);
			break;			
		default: return false;
		}
	return true;
}