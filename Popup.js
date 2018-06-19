console.log('popup')

class Popup {
	constructor (text,color) {
		this.text = text;
		this.color = color;

		
	}
	build () {

		const container = $('<div>', {
			id: "popup_container",
		})

		const popup = $('<div>', {
			id: "popup", 
			class: 'container',
		}).appendTo(container)

		$('<h2>', {
			text: this.text, 
		}).appendTo(popup)

		$('<button>', {
			text: "❌", 			
			class: "close-btn", 
			click: this.close.bind(this), 
		}).appendTo(popup)

		container.appendTo('html');

	}
	close () {
		console.log(this)
		console.log('close')
		$('#popup_container').remove();
	}
}

class DynamicPopup extends Popup {
	constructor (text, color, url) {
		super(text, color);
		this.url = url;
		this.attachBtn();
		this.build();

		
	}
	createPlaylist () {
		return new promise(function (resolve) {
			$.ajax({
			method: 'POST', 
				url: 'playlist/api/playlist',
				data: {
					name: $('#listName').val(),
					image: $('#listImage').val()
				},
				success: console.log('success')
			})
			// .done(function (response) {
			// 	if (response.success) {
			// 		$.ajax({
			// 			url: 'playlist/api/playlist',
			// 			type: 'default GET (Other values: POST)',
			// 			dataType: 'default: Intelligent Guess (Other values: xml, json, script, or html)',
			// 			data: {param1: 'value1'},
			// 		})
			// 	}
			// })
		})
	}
	attachBtn () {
		console.log($('form'))
		$('form').on('submit', function(event) {
			event.preventDefault();
			this.createPlaylist()
		});
	}

	build () {
		super.build();
		fetch(this.url)
		.then(response => response.text())
		.then(html => {
			$('#popup').append($(html))
			// console.log('')
		})
	}
}