
class User

  attr_reader :name, :username, :email

  def initialize(name, username, email, password)
    @name = name
    @username = username
    @email = email
    @password = password
  end

  def self.create(name, username, email, password)
    
  end

end
