module Weather

  def storm
    if rand >= 0.8
      "Storm brewing"
    else
      "Clear skies"
    end
  end

end