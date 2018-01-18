class ArticlesController < ApplicationController
	include ApplicationHelper
	
	def index
		@all_articles = Article.all
		@articles = @all_articles.paginate(page: params[:page], per_page: 5)
	end

  def new
  end

  def create
	  @article = Article.new(article_params)
	  @article.save
	  # redirect_to @article
	  update('article')
	  redirect_to save_url
	end

	def show
		@article = Article.find(params[:id])
	end
	 
	private
	  def article_params
	    params.require(:article).permit(:title, :text)
	  end
end
