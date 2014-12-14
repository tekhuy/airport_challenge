require './lib/weather'

  class WeatherEffect; include Weather; end

   describe Weather do

    let(:plane) {double :plane}
    let(:airport) {double :airport}

    # Include a weather condition using a module.
    # The weather must be random and only have two states "sunny" or "stormy".
    # Try and take off a plane, but if the weather is stormy, the plane can not take off and must remain in the airport.
    # 
    # This will require stubbing to stop the random return of the weather.
    # If the airport has a weather condition of stormy,
    # the plane can not land, and must not be in the airport

    xcontext 'weather conditions' do

      xit 'will prevent a plane from taking off when there is a storm brewing' do
        allow(plane).to receive(:land)
        airport.landing(plane)
        expect(airport.plane_count).to eq(1)
        allow(plane).to receive(:take_off)
        airport.fly_permission(plane)
        expect(airport.plane_count).to eq(0)
      end

      xit 'will prevent a plane from landing in the middle of a storm' do
      end

    end
  
end

#     require './lib/bike_container'

# class ContainerHolder; include BikeContainer; end

# describe BikeContainer do 

#   let(:bike) {Bike.new}
#   let(:holder) {ContainerHolder.new}

#   it 'should accept a bike' do
#     expect(holder.bike_count).to eq(0)
#     holder.dock(bike)
#     expect(holder.bike_count).to eq(1)
#   end

#   it  "should raise an error if no bike" do
#     expect(lambda {holder.release(bike)}).to raise_error(RuntimeError, 'no bike available')
#     #expect(holder.release(bike)).to raise_error(RuntimeError, 'no bike available')
# #   end

#   it "should return empty if empty" do
#     expect(holder).to be_empty
#   end

# end 