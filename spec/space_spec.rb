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
      connection.exec("INSERT INTO spaces (name) VALUES ('Rachels house');")
      connection.exec("INSERT INTO spaces (name) VALUES ('Aleks house');")
      connection.exec("INSERT INTO spaces (name) VALUES ('James house');")
      connection.exec("INSERT INTO spaces (name) VALUES ('Faisal house');")

      list_spaces = Space.all

      expect(list_spaces).to include('Rachels house')
      expect(list_spaces).to include('Aleks house')
      expect(list_spaces).to include('James house')
      expect(list_spaces).to include('Faisal house')
    end
  end

end
