require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
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
      expect(response).to be_success
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      article = create(:article)
      get :edit, {:id => article.id}
      expect(response).to be_success
    end
  end

  describe "Post #ajax_create_article_comment" do
    it "should create the comment" do
      comment = create(:comment)
      params = { comment: {article_id: comment.article_id}, comment_params: {body: comment.body, article_id: comment.article_id}}
      post :create_article_comment, params

      expect(response).to be_success
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

  describe "POST #create" do
    it "should not create the article and show errors" do
      article = create(:article)
      post :create, article: { title: article.title, body: "shrt" }

      expect(response).to be_success
    end
  end
  #
  # describe "POST #update" do
  #   it "should update the article" do
  #     article = create(:article)
  #
  #     post :update, article: { title: article.title, body: article.body }
  #
  #     expect(response).to redirect_to(Article.last)
  #     expect(flash[:notice]).to match(/^Article was successfully created./)
  #   end
  # end

end
