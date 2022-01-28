require_relative '../lib/docking_station.rb'

describe DockingStation do 
  describe "#release_bike" do 
    it { is_expected.to respond_to :release_bike }

    it 'should release a bike and check it works' do 
      bike = subject.release_bike
      expect(bike).to be_working
    end 
  end 

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'should dock something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end 
  end 
  
  describe "#bike" do
  it { is_expected.to respond_to(:bike) }

    it 'should return docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
end 
