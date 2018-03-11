require_relative 'continent'
class Country < Continent
  attr_accessor :country_name
  def init(_country_name)
    @country_name
  end
end
