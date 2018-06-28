# make a dog class that has three attributes :name, breed, age.
# make a counter that says ho many dogs have been created.

class Dog 
  attr_accessor(:name, :breed, :age)
  @@counter = 0 
  
  def initialize(name, breed, age)
    @name = name
    @breed = breed
    @age = age
    @@counter += 1 
  end
  
  def get_name
    "This dog's name is #{@name}"
  end
  def get_breed
    "This dog's breed is #{@breed}"
  end
  def get_age
    "This dog's age is #{@age}"
  end
end