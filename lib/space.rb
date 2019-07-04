class Space

  attr_reader :id, :name

  def initialize(id:, name:)
    @id = id
    @name = name
  end

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'makers_bnb_test')
    else
      connection = PG.connect(dbname: 'makers_bnb')
    end

    result = connection.exec("SELECT * FROM spaces")
    result.map do |space|
      Space.new(id: space['id'], name: space['name'])
    end
  end

  def self.create
    "Space"
  end
end
