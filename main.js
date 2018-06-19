fetch('api/playlist')
.then(response => response.json())
.then(playlists => {
	console.log(playlists.data);
	init(playlists.data)

	$('input[type=search]').keyup(function(event) {
		init(
			playlists.data.filter(pl => pl.name.includes($(event.target).val()))
		)
	});
	$('header button').click(function(event) {
		var popup = new DynamicPopup('Create a new playlist', '#fcf8e3', 'form.html');
		// popup.attachBtn()
	});
	$('*.playlist-name').arctext({radius: 190,dir: 1});

})


function init(playlists) {
	$('main').empty()
	playlists.forEach(playlistObj => {
		console.log(playlistObj)
		var playlist = new Playlist(playlistObj);
		playlist.build();
		playlist.attachBtn()
	})
}