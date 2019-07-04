require 'space'

describe Space do
  it 'responds to create method' do
    expect(Space).to respond_to(:create)
  end

  it 'returns a space' do
    expect(Space.create).to eq("Space")
  end

  it 'knows its name' do
    boardroom = Space.new("Makers")
    expect(boardroom.name).to eq("Makers")
  end

end
