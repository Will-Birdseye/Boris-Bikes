require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    fail "no bikes available" if @bikes.empty?
    @bikes.pop  
  end 

  def dock(bike)
    fail "Too many bikes! No more space!" if @bikes.count >= 20
    @bikes << bike
  end
end