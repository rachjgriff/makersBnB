require 'user'

describe User do
  describe '.create' do
    it 'creates a new user' do
      new_user = User.create('Faisal', 'faisalleic', 'test@gmail.com', 'testpassword')
      expect(new_user.name).to eq('Faisal')
      expect(new_user.email).to eq('test@gmail.com')
      expect(new_user.username).to eq('faisalleic')
    end
  end
end
