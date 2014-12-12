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
    plane.land!
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

# grand final
# Given 6 planes, each plane must land. When the airport is full, every plane must take off again.
# Be careful of the weather, it could be stormy!
# Check when all the planes have landed that they have the right status "landed"
# Once all the planes are in the air again, check that they have the status of flying!

xdescribe "The grand finale (last spec)" do

  xit 'all planes can land and all planes can take off' do

  end
end
