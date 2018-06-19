class Player {
    constructor(playlistId, playlistName) {
        this.playlistId = playlistId;
        this.playlistName = playlistName;
        this.songs = [];
        this.getSongs();
    }

    getSongs() {
        $.get('api/playlist/' + this.playlistId + '/songs', function(response) {
            this.songs = response.data.songs;
            this.build()
        }.bind(this));
    }

    build() {
        if ($('.player')) {
            $('.player').empty();
        }

        this.container = $('<div>', { class: "player row" });
        $('<h4>', {
            text: this.playlistName,
            class: "player-name",
        }).appendTo(this.container);

        var audio = $('<audio>', {
            src: this.songs[0].url,
            controls: 'true',
            autoplay: 'true',
            'data-song_id': 0,




        }).on('ended', this.playNext.bind(this))
        audio.appendTo(this.container);

        var list = $('<ul>', {
            class: 'track-list',
        })
        this.songs.forEach(song => {

            $('<li>', {
                class: 'track',
                text: song.name,
                click: function(e) {
                    audio.attr('src', song.url);
                    $('*.playing').removeClass('playing')
                    e.target.className += ' playing'
                },
            }).appendTo(list)
        })

        this.container.prependTo($('main'))
                list.appendTo(this.container);
        console.log('myli',$('*.track').first().first());
        $('*.track').first().first().addClass('playing');


    }

    playNext(e) {
        var index = ++e.target.dataset.song_id;
        if (index >= this.songs.length) { return false; }
        e.target.src = this.songs[index].url;
        e.target.play();
        var next = $('.playing').next();
        $('*.playing').removeClass('playing');
        next.addClass('playing');
    }
}