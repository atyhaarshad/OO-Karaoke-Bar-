require( 'minitest/autorun' )
require('minitest/rg')
require_relative('../guest')
require_relative('../room')
require_relative('../song')

class GuestTest < MiniTest::Test

  def setup()
    @song1 = Songs.new("My Way")

    @guest1 = Guest.new("Avril", 200)
    @guest2 = Guest.new("Mariah", 500)
    @guest3 = Guest.new("Beyonce", 1000)
    @guest4 = Guest.new("Ariana", 50)
    @guest5 = Guest.new("Taylor", 100)

    @Room1 = Room.new(1, 20, "free", 1, [@song1])
    @Room2 = Room.new(2, 50, "free", 2, [])
    @Room3 = Room.new(3, 100, "booked", 3, [])
    @Room4 = Room.new(4, 500, "free", 4, [])
    @Room5 = Room.new(5, 1000, "free", 5, [])
  end

  def test_deduct_money()
    guest = @guest1
    result = guest.deduct_money(20)
    assert_equal(180, result)
  end

  def test_has_enough_money()
    guest = @guest1
    room = @Room2
    result = guest.has_enough_money(room)
    assert_equal(result, true)
  end

  def test_does_not_have_enough_money()
    guest = @guest4
    room = @Room5
    result = guest.has_enough_money(room)
    assert_equal(result, false)
  end

  def test_set_favourite_song()

    underTest = @guest1
    song = @song1

    underTest.set_favourite_song(song)

    assert_equal(underTest.favourite_song, song)
  end

  def test_is_favourite_song()

    underTest = @guest1
    song = @song1
    room = @Room1

    underTest.set_favourite_song(song)
    result = underTest.is_favourite_song(room)

    assert_equal(result, "wooo")
  end
  
end
