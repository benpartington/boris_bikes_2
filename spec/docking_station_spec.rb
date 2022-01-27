require 'docking_station'

describe DockingStation do 
  describe "#release_bike" do 
    it { is_expected.to respond_to :release_bike }  
    it 'should release a working bike' do 
      bike = subject.release_bike
      expect(bike).to be_working
    end 
  end 

  it { is_expected.to respond_to(:dock).with(1).argument }
end 
