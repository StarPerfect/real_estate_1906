class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price.delete("$")
    @address = address
    @rooms = []
    @total_area = 0
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
    @rooms.each do |room|
      @total_area += room.area
    end
    @total_area
  end

  def price_per_square_foot
    ((@price.to_f / @total_area * 100).round / 100.0).to_s
  end

  def rooms_sorted_by_area
    @rooms.sort_by(&:area)
  end

  def rooms_by_category
    rooms_by_cat = Hash.new
    @rooms.each do |room|
      rooms_by_cat[room.category] = rooms_from_category(room.category)
    end
    rooms_by_cat
  end
end
