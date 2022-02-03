# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

# String Class
# string1 = "string"
# johns_favorite_food = "avocado"
# puts johns_favorite_food
# puts johns_favorite_food.class

# test_number = 5
# puts test_number.class

# String Methods

# Custom Class
class Dog
    def speak
        puts "Woof"
    end 
end

jenkins = Dog.new
puts jenkins.class
puts jenkins.speak