class Plane

  def initialize
    @flying = true
    @land 
  end

  def flying?
    @flying
  end

  def in_air
    @flying
    if @flying == true
      return "flying"
    else 
      return "Negative Ghostrider - The plane is grounded"
    end
  end

  def take_off
    @flying = true
  end

  def land
    @flying = false
      if @flying == false
        return "No Mav... The plane has landed"
      else
        return "We're flying in the air"
      end
  end


end
