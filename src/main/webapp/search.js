var video_id;
// After the API loads, call a function to enable the search box.
function handleAPILoaded() {
  $('#search-button').attr('disabled', false);
}

// Search for a specified string.
function search() {
  var q = $('#query').val();
  console.log(q);
   request = gapi.client.youtube.search.list({
    q: q, 
    part: 'id, snippet', 
    videoCategoryId: '10',
    type: 'video',
    videoSyndicated: 'true',
    maxResults: '5'/*,
    order: 'viewCount'*/
 });

  request.execute(function(response) {
	var result = response.result;
    //console.log(response.result.items[0]);
    //var str = JSON.stringify(response.result);
    $('#search-container').html('<pre>' + JSON.stringify(result.items[0].id.videoId) + '</pre>' + q);
    video_id = JSON.stringify(result.items[0].id.videoId);
    var new_id = video_id.slice(1, -1);
    $('#link').html(new_id);
    $('#url').val(new_id);
   /* document.getElementById("search-container").innerHTML = "";*/
  });
}
