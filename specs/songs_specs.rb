require( 'minitest/autorun' )
require('minitest/rg')

class SongsTest < MiniTest::Test

  def setup()
    @song1 = Songs.new("My Way")
    @song2 = Songs.new("Bohemian Rapsody")
    @song3 = Songs.new("Single Ladies")
    @song4 = Songs.new("YMCA")
    @song5 = Songs.new("Hallelujah")

  @songs = [@song1, @song2, @song3, @song4, @song5]
  end






  
end
