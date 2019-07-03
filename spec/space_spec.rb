require 'space'

describe Space do
  it 'responds to create method' do
    expect(Space).to respond_to(:create)
  end

  it 'returns a space' do
    expect(Space.create).to eq("Space")
  end
end
