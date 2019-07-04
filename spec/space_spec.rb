require 'pg'
require 'space'

describe Space do
  it 'responds to create method' do
    expect(Space).to respond_to(:create)
  end

  it 'returns a space' do
    expect(Space.create).to eq("Space")
  end

  describe '.all' do
    it 'returns a list of spaces' do
      connection = PG.connect(dbname: 'makers_bnb_test')
      db_query_result = connection.exec("INSERT INTO spaces (name) VALUES ('Rachels house');")
      connection.exec("INSERT INTO spaces (name) VALUES ('Aleks house');")
      connection.exec("INSERT INTO spaces (name) VALUES ('James house');")
      connection.exec("INSERT INTO spaces (name) VALUES ('Faisal house');")

      list_spaces = Space.all

      expect(list_spaces.length).to eq 4
      expect(list_spaces.first).to be_a Space
      # expect(list_spaces.first.id).to eq db_query_result.id
      expect(list_spaces.first.name).to eq 'Rachels house'
      p db_query_result
      p list_spaces
    end
  end
end
