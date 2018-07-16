class Owner
  
   attr_accessor :pets_info
  def initialize
    @pets_info= {:cats=> [], :dogs=> [], :fish=> []}
  end
  
  def buy_dog(dog_name)
    pets_info[:dogs].push(Dog.new(dog_name))
  end
  
  def buy_cat(cat_name)
    pets_info[:cats].push(Cat.new(cat_name))
  end
  
  def buy_fish(fish_name)
    pets_info[:fish].push(Fish.new(fish_name))
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
 
owner1 = Owner.new
owner1.buy_dog("Spot")
puts owner1.pets_info











