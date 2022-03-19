require 'rails_helper'

RSpec.describe Managment, type: :model do
  let(:user) do
    User.create!(name: 'Alex Ramos', email: 'alex@gmail.com', password: '123456')
  end

  subject do
    Managment.new(name: 'Notebook', amount: 5, author_id: 1)
  end

  before { subject.save }

  it 'expects name to not be empty' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'expects amount to not be empty' do
    subject.amount = nil
    expect(subject).to_not be_valid
  end

  it 'expects author_id to not be empty' do
    subject.author_id = nil
    expect(subject).to_not be_valid
  end
end
