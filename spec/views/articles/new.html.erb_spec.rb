require 'rails_helper'

RSpec.describe "articles/new.html.erb", type: :view do
  before(:each) do
    assign(:article, build(:article))
  end

  it "renders the article form" do
    render
    expect(rendered).to match(/new_article/)
  end

  it "renders the article form fields" do
    render
    expect(rendered).to match(/article_title/)
    expect(rendered).to match(/article_body/)
  end

end
