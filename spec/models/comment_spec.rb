require 'rails_helper'

RSpec.describe Comment, ".valid?" do
  it "should validate body presence" do
    comment = build(:comment, body: "")
    result = comment.valid?
    expect(result).to be_falsy
  end

  it "should validate body min length" do
    comment = build(:comment, body: "comment")
    result = comment.valid?
    expect(result).to be_truthy
  end

  it "should validate body max length too long" do
    body_content = 251.times { "comment " }
    comment = build(:comment, body: body_content)
    result = comment.valid?
    expect(result).to be_falsy
  end

  it "should belong to an article" do
    comment = build(:comment)
    result = comment.article
    expect(result).to be_an_instance_of(Article)
  end
end
