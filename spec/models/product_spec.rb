require 'rails_helper'

RSpec.describe Product, type: :model do

  subject { Product.new(name: 'new product') }

  it 'passes factory build' do
    expect(subject).to be_valid
  end

  it 'allows a category to be added' do
    subject.categories << Category.new(name: 'new category')
    subject.save
    expect(subject).to be_valid
    expect(subject.categories.count).to eq 1
  end

  it 'allows multiple categories to be added' do
    subject.categories << Category.new(name: 'new category')
    subject.categories << Category.new(name: 'new category 2')
    subject.save
    expect(subject).to be_valid
    expect(subject.categories.count).to eq 2
  end
end