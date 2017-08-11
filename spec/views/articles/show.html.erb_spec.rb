require 'rails_helper'

RSpec.describe "articles/show.html.erb", type: :view do
  before(:each) do
    assign(:article, create(:article))
    assign(:comment, build(:comment))
    assign(:comments, create_list(:comment, 3))
  end

  it "renders article" do
    render
    expect(rendered).to match(/article-display/)
  end

  it "renders existing comments" do
    render
    expect(rendered).to match(/comment-list/)
  end

  it "renders comment form" do
    render
    expect(rendered).to match(/new_comment/)
  end

  it "renders the new comment form fields" do
    render
    expect(rendered).to match(/comment_body/)
    expect(rendered).to match(/comment_article_id/)
  end
end
