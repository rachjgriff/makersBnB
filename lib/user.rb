require 'pg'

class User

  attr_reader :name, :username, :email, :password, :id

  def initialize(name:, username:, email:, password:)
    @name = name
    @username = username
    @email = email
    @password = password
  end

  def self.create(name:, username:, email:, password:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end

    result = connection.exec(
      "INSERT INTO users (name, username, email, password)
      VALUES ('#{name}', '#{username}', '#{email}', '#{password}')
      RETURNING id, name, username, email, password;"
    )

    User.new(
      name: result[0]['name'],
      username: result[0]['username'],
      email: result[0]['email'],
      password: result[0]['password'],
    )

  end
end
