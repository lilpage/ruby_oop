#Write your solution below:
class Animal

  attr_reader :state

  def initialize(type)
    @type = type
  end

  def eat(food)
    puts "The #{@type} is eating #{food}."
  end

  def sleep
    @state = "asleep"
  end

  def wake
    @state = "awake"
  end

end

class Person < Animal

  def initialize(age, gender, name)
    @type = "person"
    @age = age
    @gender = gender
    @name = name
  end

  def eat(food)
    if food == "person"
      puts "This person is most certainly not eating another human being."
    else
      puts "This person is eating #{food}."
    end
  end

  def greet
    puts "Hi, I'm #{@name}. I'm a #{@gender}, and #{@age} years old."
  end


end

fox = Animal.new("fox")
fox.eat("grapes")
human = Person.new(22, "female", "Annie")
human.eat("person")
human.greet
