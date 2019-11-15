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

def remove_guest(guest)
  @guests_in_room.delete(guest)
end

def is_guest_in_room(guest)
  @guests_in_room.include?(guest)
end

end
