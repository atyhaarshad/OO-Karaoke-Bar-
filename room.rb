class Room
  attr_reader :room_num, :cost, :availability, :guests, :playlist, :capacity

  def initialize(room_num, cost, availability, capacity, playlist)
    @room_num = room_num
    @cost = cost
    @availability = availability
    @capacity = capacity
    @guests = []
    @playlist = playlist
  end

  def check_guest_into_room(guest)

    if (guests.size == capacity)
      p "can't check in, room at capacity"
     elsif guest.has_enough_money(self)
      guest.deduct_money(@cost)
      @guests.push(guest)
    else
      p "can't check in, not enough money"
    end
  end

  def add_song_to_playlist(song)
    @playlist.push(song)
  end



end
