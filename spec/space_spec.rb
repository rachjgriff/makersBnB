require 'space'

describe Space do
  it 'responds to create method' do
    expect(Space).to respond_to(:create)
  end
end