class Airport

  def initialize(options = {})
    @capacity = 10
  end

  # def capacity=(value)
  #   @capacity = value
  # end

  # def capacity
  #   capacity ||= DEFAULT_CAPACITY
  # end

  def planes
    @planes ||= []
  end

  def plane_count
    @plane.count
  end

end