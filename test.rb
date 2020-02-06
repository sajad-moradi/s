# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end
class OrangeTree
 attr_reader :age ,:height , :oranges
  # Constructor for the tree
  def initialize(age, height)
    # constructor code goes here
    @age = age
    @height = height
    @oranges = []
  end
  def height
    @height
  end
  def age
    @age
  end
  # Ages the tree one year
  def age!
    #tree aging code goes here
    @age += 1
    @height += 100
    @oranges << 1 if @age > 3
  end
  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
    def any_oranges?
    # code to check if tree has any oranges goes here
        @oranges.length > 0
    end
  def dead?
    # check if tree is dead code goes here
   @age >= 45
  end
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
    def pick_an_orange!
    # orange-picking logic goes here
        if @oranges.length > 0
          @oranges.pop
        else  @oranges == 0
            NoOrangesError
        end
    end
end
class Orange
    # Initializes a new Orange with diameter +diameter+
    attr_reader :diameter
    def initialize(diameter)
      @diameter = diameter
    end
end
orange = Orange.new(4)
tree = OrangeTree.new(1, 20)
tree.age! until tree.any_oranges?
  puts "Tree is #{tree.age} years old and #{tree.height} cm tall"
  until tree.dead?
    basket = []
    #It places the oranges in the basket
    #IT PLACES THE ORANGES IN THE basket
    while tree.any_oranges?
      basket << tree.pick_an_orange!
    end
    avg_diameter = ((basket.sum * orange.diameter) / basket.length) # It's up to you to calculate the average diameter for this harvest.
    puts "Year #{tree.age} Report"
    puts "Tree height: #{tree.height/100.0} m"
    puts "Harvest: #{basket.size} oranges with an average diameter of #{avg_diameter} cm"
    puts ""
    #Age the tree another year
    tree.age!
  end
  puts "Alas, the tree, she is dead!"
8:37
V3 :point_up_2: