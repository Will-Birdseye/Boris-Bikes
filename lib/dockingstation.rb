require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    fail "no bikes available" unless @bike
    @bike   
  end 

  def dock(bike)
    fail "Too many bikes! No more space!" if @bike
    @bike = bike
  end
end