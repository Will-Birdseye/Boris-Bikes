require 'bike'

describe Bike do 
  it "checks to see if a bike is working" do
    expect(subject).to respond_to(:working?)
  end
end

