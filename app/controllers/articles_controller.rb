class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
    @comments = @article.comments.all
    @comment = Comment.new
  end

  def new
    @article = Article.new
  end

  def edit
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update

  end

  def create_article_comment
    @article = Article.find(params[:comment][:article_id])
    @comments = @article.comments
    @comment = @comments.new(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to @article, notice: 'Comment was created' }
      else
        format.html { redirect_to @article, alert: 'Comment has errors' }
      end
    end
  end

  def destroy

  end

  private


  def article_params
    params.require(:article).permit(:body, :title)
  end

  def comment_params
    params.require(:comment).permit(:body, :article_id)
  end
end
