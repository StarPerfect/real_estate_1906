class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.delete("$")
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
    room
  end
end
