require './lib/airport'
# require './lib/plane'

# A plane currently in the airport can be requested to take off.
#
# No more planes can be added to the airport, if it's full.
# It is up to you how many planes can land in the airport and how that is implemented.
#
# If the airport is full then no planes can land

  describe Airport do

  let(:airport) { Airport.new(:capacity => 10) }
  let(:plane) {double :plane}

  # it 'should allow setting default capacity on initialising' do
  #   expect(self.capacity).to eq(10)
  # end

    context 'Traffic Control should give' do

      it 'a plane permission to land' do
        allow(plane).to receive(:land)
        airport.landing(plane)
        expect(airport.plane_count).to eq(1)
      end

      it 'a plane permission to take off' do
        allow(plane).to receive(:land)
        airport.landing(plane)
        expect(airport.plane_count).to eq(1)
        allow(plane).to receive(:take_off)
        airport.fly_permission(plane)
        expect(airport.plane_count).to eq(0)
      end

    xcontext 'Traffic Control' do

      xit 'should not permit a plane to land if the airport is full' do
      end

    end

  end
  
end

