require_relative '../lib/docking_station.rb'

describe DockingStation do 
  describe "#release_bike" do  
    it { is_expected.to respond_to :release_bike }

    it 'should return an error message if there are no bikes docked' do
      expect { subject.release_bike }.to raise_error("no bikes docked")
    end

    it 'should release a bike and check it works' do 
      bike = Bike.new
      subject.dock(bike)
      bike = subject.release_bike
      expect(bike).to be_working
    end 

    it 'in order to release a bike, a bike must be in the docking station already' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to be_an_instance_of(Bike)
    end

  end 

  describe "#dock" do
    it { is_expected.to respond_to(:dock).with(1).argument }

    # it 'should dock something' do
    #   bike = Bike.new
    #   expect(subject.dock(bike)).to eq bike
    # end

  end 
  
  describe "#bikes" do
    it { is_expected.to respond_to(:bikes) }
  end

end 
