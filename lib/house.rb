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

  def rooms_from_category(category)
    room_in_category = []
    @rooms.select do |room|
      if room.category == category
        room_in_category << room
      end
    end
  end

  def area
    total_area = 0
    @rooms.each do |room|
      total_area += room.area
    end
    total_area
  end
end
