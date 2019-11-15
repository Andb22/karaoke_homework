class Room

  attr_reader :name, :playlist, :guests_in_room

def initialize(name, playlist)
  @name = name
  @playlist = playlist
  @guests_in_room = []
end

def add_guest(guest)
  @guests_in_room.push(guest)
end

def number_of_guests
  return @guests_in_room.length
end


end
