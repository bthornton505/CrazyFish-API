require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {
    User.create(
      :first_name => "Benjamin",
      :last_name => "Thornton",
      :email => "benji@dog.com",
      :password => "dogpoop"
    )
  }

  it "is valid with a firstname, lastname, email, and password" do
    expect(user).to be_valid
  end

  # it 'is not valid when missing required attributes' do
  #   user = User.new
  #   expect(user).not_to be_valid
  # end

  it "is not valid without a password" do
    expect(User.new(first_name: "Name")).not_to be_valid
  end

  it 'should have many fishtanks' do
    association = User.reflect_on_association(:fishtanks)
    expect(association).to eq(:has_many)
  end

end
