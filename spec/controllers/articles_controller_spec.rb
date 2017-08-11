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

  describe "Post #create_article_comment" do
    it "should create a comment" do
      comment = create(:comment)
      params = { comment: {article_id: comment.article.id, body: comment.body}}

      expect {
        post :create_article_comment, params
      }.to change(Comment, :count).by(1)
    end

    it "should redirect to the article with notice" do
      comment = create(:comment)
      params = { comment: {article_id: comment.article.id, body: comment.body}}

      post :create_article_comment, params

      expect(response).to redirect_to(article_path(comment.article_id))
      expect(flash[:notice]).to match(/^Comment was created/)
    end

    it "should redirect to the article with error notice" do
      comment = create(:comment)
      params = { comment: {article_id: comment.article.id, body: "test"}}

      post :create_article_comment, params

      expect(response).to redirect_to(article_path(comment.article_id))
      expect(flash[:alert]).to match(/^Comment has errors/)
    end
  end

  describe "POST #create" do
    it "should create a comment" do
      article = create(:article)
      params = { article: {title: article.title, body: article.body}}

      expect { post :create, params }.to change(Article, :count).by(1)
    end

    it "should should the newly created article" do
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
