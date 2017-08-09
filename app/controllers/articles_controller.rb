class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
  end

  def new
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

  def destroy

  end

  private


  def article_params
    params.require(:article).permit(:body, :title)
  end
end
