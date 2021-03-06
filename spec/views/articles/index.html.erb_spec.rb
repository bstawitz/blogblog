require 'rails_helper'

RSpec.describe "articles/index.html.erb", type: :view do
  before(:each) do
    @articles = assign(:articles, create_list(:article, 3))
  end

  it "renders a welcoming message" do
    render
    expect(rendered).to match(/Welcome to Blog Blog/)
  end

  it "renders an article" do
    render
    expect(rendered).to match(/article/)
  end

  it "has a link to the Article #show" do
    render
    expect(rendered).to have_link(@articles.first.title, href: article_path(@articles.first.id))
  end
end
