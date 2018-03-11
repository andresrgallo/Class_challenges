# require_relative 'city'
# require_relative 'country'
class Continent
  attr_accessor :name
  def initialize(name)
    @name = name
    @countries = []
  end

  def add_country(country_name)
    @countries << country_name.country_name
    end

  def print_countries
    p @countries
  end
  def name
    p @name
  end
end

class Country < Continent
  attr_accessor :country_name
  def initialize(country_name)
    
    @country_name = country_name
    @states = []
  end

  def add_states(state)
    @states << state.state_name
  end

  def print_states
    p @states
  end

end

class State < Country
  attr_accessor :state_name, :cities
  
  def initialize(state_name)
    @state_name = state_name
    @cities = []
  end

  def add_cities(city)
    @cities << city.city_name
  end
  
  def print_cities
    p @cities
  end
  def state_name
    @state_name
  end
end

class City < State
  attr_accessor :city_name
  def initialize(city_name)
    @city_name = city_name
  end
end




sudamerica = Continent.new("south america")
sudamerica.add_country(colombia = Country.new('colombia'))
bogota = City.new("bogota")
cundi = State.new('cundi')
cundi.add_cities(bogota)
colombia.add_states(cundi)

cundi.print_cities
colombia.print_states
sudamerica.print_countries
# puts sudamerica.name
bogota.print_cities
# bogota.print_cities


# puts "find the country of a city"
# gets.chomp
# bogota.state_name
    

#Adding states

# colombia_states.each {|states| p sudamerica.print_countries[0]}    #.add_states(states)}
# venezuela_states = %w[cundi antiq valle santander atlantico]
# venezuela_states.each {|states| sud_countries[sud_countries.index("venezuela")].add_states(states)}
# chile_states = %w[cundi antiq valle santander atlantico]
# chile_states.each {|states| sud_countries[sud_countries.index("chile")].add_states(states)}
# argentina_states = %w[cundi antiq valle santander atlantico]
# argentina_states.each {|states| sud_countries[sud_countries.index("argentina")].add_states(states)}
# brasil_states = %w[cundi antiq valle santander atlantico]
# brasil_states.each {|states| sud_countries[sud_countries.index("brasil")].add_states(states)}
# ecuador_states = %w[cundi antiq valle santander atlantico]
# ecuador_states.each {|states| sud_countries[sud_countries.index("ecuador")].add_states(states)}






#adding a city
# puts "Add a city"
# puts "first what country in South America"
# p sudamerica.print_countries
# gets.chomp
# puts "what state"

 