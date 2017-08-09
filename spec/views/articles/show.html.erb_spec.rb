require 'rails_helper'

RSpec.describe "articles/show.html.erb", type: :view do
  before(:each) do
    @article = assign(:article, create(:article))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Articles/)
    expect(rendered).to match(//)
  end
end
