
class Continent
  attr_accessor :name, :population
  def initialize(name,population)
    @name = name
    @population = population
    @countries = []
  end

  def add_country(country)
    @countries << country.name
    end

  def print_countries
    p @countries
  end
end

class Country < Continent
  attr_accessor :name, :population
  def initialize(name, population)
    super(name, population)
   @states = []
  end

  def add_states(state)
    @states << state.name
  end

  def print_states
    p @states
  end

end

class State < Country
  
  def initialize(name, population)
    super(name,population)
    @cities = []
  end

  def add_cities(city)
    @cities << city.name
  end
  
  def print_cities
    p @cities
  end
end

class City < State
  
  def initialize(name, population)
    super(name,population)
  end
end




sudamerica = Continent.new("south america",400000000)
sudamerica.add_country(colombia = Country.new('colombia', 45000000))
bogota = City.new("bogota", 7500000)
cundi = State.new("cundi", 10000000)
cundi.add_cities(bogota)
colombia.add_states(cundi)

p sudamerica.population
p colombia.population
sudamerica.print_countries
p bogota.name
cundi.print_cities 
colombia.print_states


 