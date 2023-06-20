require 'pry'
class Kaiju

  def initialize(name, powers, latest_city_destroyed)
    @name = name
    @powers = powers
    @latest_city_destroyed = latest_city_destroyed
    @house_stomped = 0
  end

  def latest_city_destroyed=(latest_city_destroyed)
    @latest_city_destroyed = latest_city_destroyed
  end

  def roar
    puts "roar xd"
  end


  def stomp
    @house_stomped += 1
    puts "#{@name} has a stomped  #{@house_stomped} houses"
  end



end
godzilla = Kaiju.new("godzilla", "1000", "new york")
ghidora = Kaiju.new("Ghidora", "Three heads, sitcom potential", ["Tokyo", "Sacramento"])
binding.pry