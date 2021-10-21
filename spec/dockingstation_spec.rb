require 'dockingstation'

describe DockingStation do 
  it "DockingStation object to respond to .release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "bike is released" do
    bike = Bike.new
    expect(bike).to be_a Bike
  end 

  it "responds to dock with 1 as an argument" do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it "responds to bike method" do
   expect(subject).to respond_to(:bike)
  end

  it "docks a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it "returns docked bikes" do
   bike = Bike.new
   subject.dock(bike)
   expect(subject.bike).to eq bike
  end

  it "raises an error if there are no bikes" do
    expect{subject.release_bike}.to raise_error("no bikes available")
  end

  it "expects a bike to be working" do
    bike = Bike.new
    expect(bike.working?).to eq true
  end 

end