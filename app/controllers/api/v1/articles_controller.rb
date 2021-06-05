class Api::V1::ArticlesController < ApplicationController
  before_action :authenticate_api_user!
  before_action :set_article, only: %i[show update destroy]

  def index
    @articles = current_api_user.articles.all

    render json: @articles
  end

  def show
    render json: @article
  end

  def create
    @article = current_api_user.articles.new(article_params)

    if @article.save
      render json: @article, status: :created, location: api_article_url(@article)
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def update
    if @article.update(article_params)
      render json: @article
    else
      render json: @article.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @article.destroy
  end

  private

  def set_article
    @article = current_api_user.articles.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
