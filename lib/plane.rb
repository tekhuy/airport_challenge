class Plane

  def initialize
    @flying = true
  end

  def flying?
    @flying 
  end

  def in_air
    @flying
  end

  def take_off
    @flying 
  end

  def land!
    @flying = false
  end


end
