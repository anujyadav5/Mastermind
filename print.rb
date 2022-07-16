module Print

  @@COLOR_SCHEME = { 1 => " 1 ".red, 2 => " 2 ".blue, 3 => " 3 ".yellow, 4 => " 4 ".light_blue, 5 => " 5 ".pink, 6 => " 6 ".brown, "o" => " o ".light_green, "x" => " x ".green }
  
  def initialize; end

  def Print.display(arr)
    return "#{arr.map{|num| @@COLOR_SCHEME[num]}.join(" ")} "
  end
  
end
