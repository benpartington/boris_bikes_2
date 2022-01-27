require_relative '../lib/docking_station.rb'

describe DockingStation do 
  describe "#release_bike" do 
    it { is_expected.to respond_to :release_bike }  
    it 'should release a working bike' do 
      bike = subject.release_bike
      expect(bike).to be_working
    end 
  end 

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }
    it { is_expected.to respond_to(:bike) }

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end #it
  end #describe dock
  
  describe "#bike" do
    it 'returns docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
end 
