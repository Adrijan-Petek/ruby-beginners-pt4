require 'tutorial/greeter'
RSpec.describe Tutorial::Greeter do
  it 'greets admins specially' do
    g = described_class.new({'Ada'=>:admin,'Bob'=>:user})
    expect(g.greet_roles).to include('Welcome back, admin Ada')
    expect(g.greet_roles).to include('Hello, Bob')
  end
end
