class DynamicPopup extends Popup {
	constructor (text, url) {
		super(text, '#fcf8e3');
		this.url = url;
		
	}
	build () {
		super.build();
		fetch(this.url)
		.then(response => response.text())
		.then(html => {
			$('html').appendTo($('#popup'));
		})
	} 
}