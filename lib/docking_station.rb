require_relative './bike.rb'

class DockingStation
  def release_bike
    @bike = Bike.new
  end

  def dock(bike)
    @bike = bike
  end 

  def bike
    @bike
  end
end

