$(document).ready(
		function() {
			var user = getURLParameter('user');
			// call the php that has the php array which is json_encoded
			var url = 'getJSONFromDb.php?user=' + user;
			$.getJSON(url).done(
					function(data) {
						// data will hold the php array as a javascript object
						$.each(data, function(key, val) {
							$('ul').append(
									'<li id="' + key
											+ '" class="nav-item"><a href="" onclick="JSONtoD3('+val.chart_json+')">'
											+ val.chart_name + '</a></li>');
						});
					});

		});

function getURLParameter(name) {
	return decodeURIComponent((new RegExp('[?|&]' + name + '='
			+ '([^&;]+?)(&|#|;|$)').exec(location.search) || [ , "" ])[1]
			.replace(/\+/g, '%20'))
			|| null;
}

function JSONtoD3(json){
	myJson = json;
}