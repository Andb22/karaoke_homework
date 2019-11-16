class Room

  attr_reader :name, :playlist, :guests_in_room, :tab

def initialize(name, playlist)
  @name = name
  @playlist = playlist
  @guests_in_room = []
  @tab = tab
end

def add_guest(guest)
  entry_fee = 10
  if number_of_guests < 2
   @guests_in_room.push(guest)
   guest.charge_wallet(entry_fee)
    @playlist.any? { |song| song.name == guest.fav_song}
    return "Woohoo"
  else
   return "Room is full"
  end
end

def number_of_guests
  return @guests_in_room.length
end

def remove_guest(guest)
  @guests_in_room.delete(guest)
end

def is_guest_in_room(guest)
  @guests_in_room.include?(guest)
end

def guest_entry_fee(guest_name)
entry_fee = 10
@guests_in_room.find{ |guest| guest_name.name == guest.name}
  if guest_name.wallet < entry_fee
    return false
  end
  return true
end

end
