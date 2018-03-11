class Dog
    attr_accessor :name, :age, :location
    
    def initialize name, age, location
        @name = name
        @age = age
        @location = location
        @walk = 0
        @distance = 0
    end
    def walk(loc_walk, distance)
        @distance += distance
        @walk += 1
        @loc_walk = loc_walk
        # time1 = Time.now
        self
        # time2 = Time.now
        # time_diff = time2 - time1
    end
    def calc_times
        start = Time.now
        walk("Brisbane", 50)
        finish = Time.now
        puts finish - start
    end
    def display_walks
        suffix = @walk > 1 ? "s" : ""
        puts "#{@name} has been for #{@walk} walk#{suffix} today, in #{@loc_walk} for a distance of #{@distance}kms"
    end
    def total_distance
        puts "#{@name} walked a total of #{@distance}"
    end
end
doggo = Dog.new("lulu",3,"Brisbane")
# puts doggo.location
# doggo.walk.walk.display_walks
doggo.walk("Sydney",20).walk("Brisbane",34).walk("Brisbane",14).display_walks
doggo.total_distance
doggo.calc_times