require 'dockingstation'

describe DockingStation do 
  it "DockingStation object to respond to .release_bike" do
    expect(subject).to respond_to(:release_bike)
  end

  it "bike is released" do
    expect(subject.release_bike). to be_working
  end 
end

