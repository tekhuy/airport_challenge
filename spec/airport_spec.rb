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

  context 'Airport Traffic Control should give' do

    it 'a plane permission to land' do
      allow(plane).to receive(:land)
      airport.landing(plane)
      expect(airport.plane_count).to eq(1)
    end

    it 'a plane permission to take off' do
      allow(plane).to receive(:land)
      airport.landing(plane)
      allow(plane).to receive(:take_off)
      airport.fly_permission
      expect(airport.plane_count).to eq(0)
    end
  end

  xcontext 'traffic control' do

    xit 'a plane cannot land if the airport is full' do

    end

    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    xcontext 'weather conditions' do

      xit 'a plane cannot take off when there is a storm brewing' do

      end

      xit 'a plane cannot land in the middle of a storm' do

      end
    end
  end
end

