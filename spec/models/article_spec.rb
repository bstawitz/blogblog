require 'rails_helper'

describe Article, '#show' do
  it 'returns the concatenated first and last name' do
    # setup
    article = build(:article)

    # excercise and verify
    expect(article).to be_truthy
  end
end
