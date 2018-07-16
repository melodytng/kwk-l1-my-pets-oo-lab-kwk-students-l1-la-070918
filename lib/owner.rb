class Owner
   attr_accessor :name, :pets_info
  def initialize(name) 
    @name = name 
    @pets_info= {:cats=> [], :dogs=> [], :fish=> []}
  end
  
  def buy_cat(cat)
    pets_info[:cats].push (cat)
  end
  def buy_dog(dog)
    pets_info[:dog].push (dog)
  end
  def buy_fish(fish)
    pets_info[:dog].push (fish)
  end
  
  
  def buying(animal, name) 
    
    if animal == "dog"
      buy_dog(Dog.new(name))
    
    elsif animal == "cat"
      buy_cat(Cat.new(name))
    
    elsif animal == "fish"
      buy_cat(Fish.new(name))
    end
  end
    
  def action(action, name)
    moods = null
    if action == "walking"
      moods = "good"
    elsif action == "feeding"
      moods = "full"
    elsif action == "playing"
      moods = "playful"
    end
    pets_info.each do |animal|
      animal.each do |pet|
        if pet.name == name
          pet.mood(moods)
        end
      end
    end
  end
      
end
 
the_owner=Owner.new("Karen")
puts the_owner.name
the_owner.buying("fish", "Fido")
puts the_owner.pets_info











