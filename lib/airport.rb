require_relative 'weather'

class Airport
  
  include Weather

  DEFAULT_CAPACITY = 10

    def initialize(options = {})
      @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
      @planes = []
    end

    def capacity
      @capacity ||= DEFAULT_CAPACITY
    end

    def landing(plane)
      raise 'Airport is full!' if full?
        plane.land
        @planes << plane
    end

    def fly_permission(plane)
      if self.storm == "Clear skies"
        plane.take_off 
        @planes.delete(plane)
      else
        "You cannot take off"
      end
    end

    def full?
      plane_count == @capacity
    end

    def capacity
      capacity ||= DEFAULT_CAPACITY
    end

    def planes
      @planes ||= []
    end

    def plane_count
      @planes.count
    end

end