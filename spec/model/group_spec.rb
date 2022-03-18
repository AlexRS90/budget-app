require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) do
    User.create!(name: 'Alex Ramos', email: 'alex@gmail.com', password: '123456')
  end

  subject do
    Group.new(name: 'School', icon: 'school.png', user_id: 1)
  end

  before { subject.save }

  it 'Expect name to not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'Excpect icon to not be empty' do
    subject.icon = nil
    expect(subject).to_not be_valid
  end

  it 'Expect user_id to not be valid' do
    subject.user_id = nil
    expect(subject).to_not be_valid
  end
end
