require_relative 'country'
class City < Country
  attr_accessor :city_name
  def init(city_name)
    super
    @city_name = city_name
  end
end
bogota = City.new('Bogota')
p bogota
