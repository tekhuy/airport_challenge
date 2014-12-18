class Plane

  def initialize
    @flying = true
    # @land 
  end

  def flying?
    @flying 
  end

  def in_air
    @flying == true ? "flying" : "Negative Ghostrider - The plane is grounded"
  end

  def take_off
    @flying = true
  end

  def land
    @flying = false
      "The eagle has landed"
  end
  
end