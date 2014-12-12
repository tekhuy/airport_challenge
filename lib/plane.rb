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
      return "in air"
    else 
      return "grounded"
    end
  end

  def take_off
    @flying = true
  end

  def land
    @flying = false
      if @flying == false
        return "landed"
      else
        return "in air"
      end
  end


end
