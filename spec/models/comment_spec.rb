require 'rails_helper'

describe Comment, ".article" do
  it 'should return a comment' do
    # setup
    comment = build(:comment)

    # excercise and verify
    expect(comment).to be_truthy
  end
  
  # it "should reference an article" do
  #   article_comment = create(:article_with_comments).comments.length
  #
  #   expect(article_comment).to be_truthy
  # end
end
