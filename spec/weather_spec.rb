require './lib/weather'

class Weather_at_Airport

  include Weather

end

describe Weather_at_Airport  do

  it "can be stormy" do
    airport_weather = Weather_at_Airport.new 
    allow(airport_weather).to receive(:storm).and_return("Storm brewing")
    expect(airport_weather.storm).to eq "Storm brewing"
  end

  it "can be clear skies" do
    airport_weather = Weather_at_Airport.new
    allow(airport_weather).to receive(:storm).and_return("Clear skies")
    expect(airport_weather.storm).to eq "Clear skies"
  end

end