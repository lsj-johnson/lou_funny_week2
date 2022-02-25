require './lib/joke'
require './lib/user'
require './lib/open_mic'

RSpec.describe OpenMic do
  before  :each do
    @open_mic = OpenMic.new({location: "Comedy Works", date: '11-20-18'})
    @user_1 = User.new('Sal')
    @user_2 = User.new('Ali')
  end

  it 'creates an open mic event' do
    expect(@open_mic).to be_a(OpenMic)
    expect(@open_mic.location).to eq('Comedy Works')
    expect(@open_mic.date).to eq('11-20-18')
    expect(@open_mic.performers).to eq([])
  end

  it 'can invite performers' do
    @open_mic.welcome(@user_1)
    @open_mic.welcome(@user_2)

    expect(@open_mic.performers).to eq([@user_1, @user_2])
  end
end
