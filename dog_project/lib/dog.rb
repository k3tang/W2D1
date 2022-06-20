class Dog
def initialize(name, breed, age, bark, favorite_foods)
    @name = name
    @breed = breed 
    @age = age
    @bark = bark
    @favorite_foods = favorite_foods 
end 

def name 
    @name
end 

def breed
    @breed
end 

def age 
    @age 
end 

def favorite_foods
    @favorite_foods
end

def age=(number)
    @age = number
end 

def bark
    if @age > 3 
        @bark.upcase
    else @age <= 3
         @bark.downcase
    end
end 

def favorite_food?(str)
   @favorite_foods.include?(str.capitalize)
end 



end

dog = Dog.new("Fido", "German Shepard", 3, "Bork!", ["Bacon", "Chicken"])