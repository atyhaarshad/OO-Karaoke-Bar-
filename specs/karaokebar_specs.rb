# require( 'minitest/autorun' )
# require('minitest/rg')
# require_relative('../karaokebar')
#
# class KaraokebarTest < MiniTest::Test
#
#   def setup()
#     @guest1 = Guests.new("Avril", 200)
#     @guest2 = Guests.new("Mariah", 500)
#     @guest3 = Guests.new("Beyonce", 1000)
#
#     @all_guests = [@guest1, @guest2, @guest3]
#     @Karaokebar = Karaokebar.new("The Karaoke Bar", @all_guests)
#   end
#
#   def test_get_karaokebar_name()
#     assert_equal("The Karaoke Bar", @Karaokebar.name)
#   end
#
#   def test_get_guest_count()
#     assert_equal([], @Karaokebar.guests)
#   end
#
# end
