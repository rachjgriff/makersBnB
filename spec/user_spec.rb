require 'user'
require 'pg'
describe User do
  describe '.create' do
    it 'creates a new user' do
      new_user = User.create(name: 'Faisal', username: 'faisalleic', email: 'test@gmail.com', password: 'testpassword')
      p new_user
      connection = PG.connect(dbname: 'makers_bnb_test')
      # expect(new_user.first).to be_a User

      expect(new_user.name).to eq('Faisal')
      expect(new_user.email).to eq('test@gmail.com')
      expect(new_user.username).to eq('faisalleic')
      expect(new_user.password).to eq('testpassword')
    end
  end
end
