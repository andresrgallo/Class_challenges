class Vehicle
  def initialize(make, model)
    @make = make
    @model = model
    @fuel_level = 0
    @litres = 0
  end
  def refuel litres
    @litres = litres
  end
  def fuel_level
    @fuel_level += @litres
    
  end
end

class Car < Vehicle
  def initialize(make, model)
    super make, model
  end
  def refuel litres
    super litres
    if litres > 50 then
        @fuel_level = 50
        p @fuel_level.to_s + "L"
  end
end
  def wind_up_windows
    puts "windows up"
  end
end
class Motorbike < Vehicle
  def initialize(make, model)
    super make, model
  end
  def refuel litres
    super litres
    if litres > 15 then
        p @fuel_level.to_s + "L"
    end
  end
  def wheelie
    puts" I love my wheelie"
  end
end
civic = Car.new('Honda', 'Civic')
low_rider = Motorbike.new('Harley Davidson', 'Low Rider')
# civic.fuel_level
# civic.refuel(10)
# civic.fuel_level
# civic.refuel(10)
# civic.fuel_level
civic.refuel(100)
civic.fuel_level




