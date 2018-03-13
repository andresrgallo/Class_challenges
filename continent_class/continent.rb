
class Continent
  attr_accessor :name, :population
  def initialize(name,population)
    @name = name
    @population = population
    @countries = []
  end

  def add_country(country)
    @countries << country
    end

  def print_countries
    p @countries
  end
end

class Country
  attr_accessor :name, :population
  def initialize(name, population)
    @name = name
    @population = population
    @states = []
  end

  def add_states(state)
    @states << state
  end

  def print_states
    p @states
  end

end

class State
  attr_accessor :name, :population
  def initialize(name, population)
    @name = name
    @population = population
    @cities = []
  end

  def add_cities(city)
    @cities << city
  end
  
  def print_cities
    p @cities
  end
end

class City
  attr_accessor :name, :population
  def initialize(name, population)
    @name = name
    @population = population
   end
end




sudamerica = Continent.new("south america",400000000)
sudamerica.add_country(colombia = Country.new('colombia', 45000000))
sudamerica.add_country(chile = Country.new('chile', 25000000))
sudamerica.add_country(venezuela = Country.new('venezuela', 32000000))
bogota = City.new("bogota", 7500000)
caracas = City.new("caracas", 7000000)
santiago = City.new("santiago", 8500000)
cundi = State.new("cundi", 10000000)
cara = State.new("cara", 10000000)
santi = State.new("santi", 10000000)
cundi.add_cities(bogota)
colombia.add_states(cundi)
cara.add_cities(caracas)
venezuela.add_states(cara)
santi.add_cities(santiago)
chile.add_states(santi)

p sudamerica.population
p colombia.population
sudamerica.print_countries
p bogota.name
cundi.print_cities 
colombia.print_states
p sudamerica.inspect
p bogota.inspect



 