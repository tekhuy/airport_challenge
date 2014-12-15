# When we create a new plane, it should have a "flying" status, thus planes can not be created in the airport.
#
# When we land a plane at the airport, the plane in question should have its status changed to "landed"
#
# When the plane takes of from the airport, the plane's status should become "flying"

 

require './lib/airport'
require './lib/plane'


describe Plane do

  let(:plane) { Plane.new }
  let(:airport) {double :airport}

  it 'has a flying status when created' do
    expect(plane).to be_flying
  end

  it 'has a flying status when in the air' do
    plane.in_air
    expect(plane.flying?).to eq true
  end

  it 'can land' do
    plane.land
    expect(plane.flying?).to eq false
  end

  it 'changes its status to landed after landing' do
    plane.land
    expect(plane.flying?).to eq false
  end

  it 'can take off' do
    plane.take_off
    expect(plane).to be_flying
  end

  it 'changes its status to flying after taking of' do
    expect(plane).to be_flying
  end

end