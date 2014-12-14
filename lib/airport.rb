class Airport
  
  DEFAULT_CAPACITY = 10

    def initialize(options = {})
      @capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
      @planes = []
    end

    def capacity
      @capacity ||= DEFAULT_CAPACITY
    end

    def landing(plane)
    #   raise 'There are no ports available at this airport' if full?
       plane.land
       @planes << plane
    end

    def fly_permission(plane)
      #raise 'There are no planes at the airport' if empty?
      plane.take_off
      @planes.delete(plane)
    end

  # def capacity=(value)
  #   @capacity = value
  # end

  # def capacity
  #   capacity ||= DEFAULT_CAPACITY
  # end

  # def planes
  #   @planes ||= []
  # end

    def plane_count
      @planes.count
    end

end