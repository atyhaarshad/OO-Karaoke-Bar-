class Guest
  attr_reader :name, :money, :favourite_song

  def initialize(name, money)
    @name = name
    @money = money
  end

  def deduct_money(cost)
    @money -= cost
  end

  def has_enough_money(room)
    return room.cost <= @money
  end

  def set_favourite_song(song)

    @favourite_song = song
  end

  def is_favourite_song(room)

    if (room.playlist.include?(@favourite_song))

      return "wooo"
    else
      return "booo"
    end
  end

end
