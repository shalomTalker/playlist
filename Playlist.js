class Playlist {
	constructor (data) {
		this.id = data.id;
		this.name = data.name;
		this.image = data.image;
		this.container = null;
	}
	getId () {return this.id;}

	build () {
		this.container = $('<div>', {class: "playlist col-md-3 col-sm-6", });
		var arcTitle = $('<h3>', {
			text: this.name, 
			class: "playlist-name"
		}).appendTo(this.container)
		
		$('<img>', {
			src: this.image, 
			class: "playlist-image",
			error: function (e) {
				e.target.src = 'docs/playlist.jpg'
			}, 
		}).appendTo(this.container)
		$('<button>', {
			class: "playlist-play-btn btn btn-default",
			text: "▷", 
			// click: function(e) {
		 //            console.log($('.track-list li').first.className);
		 //            $('.track-list li').first.className += ' playing';
		 //        });
		}).appendTo(this.container)
		this.container.appendTo($('main'));
	}

	attachBtn() {
		this.container.find('.playlist-play-btn').click(function(event) {
			event.preventDefault();
						

			var player = new Player(this.id, this.name);
			// console.log(player.songs);
   //          $('.track-list li').first.className += ' playing';
		}.bind(this));
	}
}