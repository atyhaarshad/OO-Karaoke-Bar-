require( 'minitest/autorun' )
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')

class RoomTest < MiniTest::Test

  def setup()
    @Room1 = Room.new(1, 20, "free", 1, [])
    @Room2 = Room.new(2, 50, "free", 2, [])
    @Room3 = Room.new(3, 100, "booked", 3, [])
    @Room4 = Room.new(4, 500, "free", 4, [])
    @Room5 = Room.new(5, 1000, "free", 5, [])

    @guest1 = Guest.new("Avril", 200)
    @guest2 = Guest.new("Ariana", 5)

    @song1 = Songs.new("My Way")
    @song2 = Songs.new("Bohemian Rapsody")
  end

  def test_check_guest_into_room()
    room = @Room1
    guest = @guest1
    room.check_guest_into_room(guest)
    assert_equal(1, room.guests.size)
  end

  def test_cant_check_guest_into_room()
    room = @Room1
    guest = @guest2
    room.check_guest_into_room(guest)
    assert_equal(0, room.guests.size)
  end

  def test_add_song()
    room = @Room1
    song = @song1
    room.add_song_to_playlist(song)
    assert_equal(1, room.playlist.size)
  end
end
