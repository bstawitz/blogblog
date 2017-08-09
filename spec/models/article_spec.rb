require 'rails_helper'

describe Article, '.valid?' do
  # body validation
  it "should validate body presence" do
    article = build(:article, body: nil)
    article2 = build(:article)
    result = article.valid?
    result2 = article2.valid?
    expect(result).to be_falsy
    expect(result2).to be_truthy
  end

  it "should validate body min length" do
    article = build(:article, body: "titl")
    article2 = build(:article)
    result = article.valid?
    result2 = article2.valid?
    expect(result).to be_falsy
    expect(result2).to be_truthy
  end

  # title validation
  it "should validate title presence" do
    article = build(:article, title: nil)
    article2 = build(:article)
    result = article.valid?
    result2 = article2.valid?
    expect(result).to be_falsy
    expect(result2).to be_truthy
  end

  it "should validate title min length" do
    article = build(:article, title: "titl")
    article2 = build(:article, title: "titles")
    result = article.valid?
    result2 = article2.valid?
    expect(result).to be_falsy
    expect(result2).to be_truthy
  end
end
