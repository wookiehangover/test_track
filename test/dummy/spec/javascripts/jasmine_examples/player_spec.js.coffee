describe 'Player' , ->

  beforeEach ->
    @player = new Player()
    @song = new Song()

  it 'should be able to play a Song' , ->
    @player.play @song
    expect( @player.currentlyPlayingSong ).toEqual @song

    # demonstrates use of custom matcher
    expect( @player ).toBePlaying @song

  describe 'when song has been paused' , ->

    beforeEach ->
      @player.play @song
      @player.pause()

    it 'should indicate that the song is currently paused' , ->
      expect( @player.isPlaying ).toBeFalsy()

      # demonstrates the use of 'not' with a custom matcher
      expect( @player ).not.toBePlaying @song

    it 'should be possible to resume' , ->
      @player.resume()
      expect( @player.isPlaying ).toBeTruthy()
      expect( @player.currentlyPlayingSong ).toEqual @song

  # demonstrates use of spies to intercept and test method calls
  xit 'tells the current song if the user has made it a favorite' , ->
    spy = sinon.spy @song, 'persistFavoriteStatus'

    @player.play @song
    @player.makeFavorite()

    expect( spy ).toHaveBeenCalled()

  # demonstrates use of expected exceptions
  describe '#resume' , ->
    it 'should throw an exception if song is already playing' , ->
      @player.play @song

      expect =>
        @player.resume()
      .toThrow 'song is already playing'

