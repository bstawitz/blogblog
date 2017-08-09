require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    it "returns http success" do
      article = create(:article)
      get :show, {:id => article.id}
      expect(response).to be_success
    end
  end

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      article = create(:article)
      get :edit, {:id => article.id}
      expect(response).to have_http_status(:success)
    end
  end

  describe "POST #create" do
    it "should create the article" do
      article = create(:article)

      post :create, article: { title: article.title, body: article.body }

      expect(response).to redirect_to(Article.last)
      expect(flash[:notice]).to match(/^Article was successfully created./)
    end
  end
end
