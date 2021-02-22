class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    serialized_data = ArticleSerializer.new(@articles).serialized_json
    render json: serialized_data
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

end
