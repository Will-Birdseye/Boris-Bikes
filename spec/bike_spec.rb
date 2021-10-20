require 'bike'

describe Bike do 
  bike = Bike.new
  it { expect(bike).to respond_to(:working?) }
end

