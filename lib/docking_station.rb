require_relative './bike.rb'

class DockingStation

  def initialize
     @bikes = []
  end

  def release_bike
    if @bikes.empty? 
      raise "no bikes docked"
    else
      Bike.new
    end
  end

  def dock(bike)
    @bikes << bike
  end 

  attr_reader :bikes
  
end


