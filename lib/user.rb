
class User
  attr_reader :name, :jokes

  def initialize(name)
    @name   = name
    @jokes  = []
  end

  def learn(joke)
    @jokes.append(joke)
  end

  def tell(user, joke)
    user.jokes.append(joke)
  end 
end
