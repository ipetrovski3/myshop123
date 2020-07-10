class ProductsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @products = @article.products.all

  end

  def new
    @article = Article.find(params[:article_id])
    @product = @article.products.build
  end

  def create
    @article = Article.find(params[:article_id])
    @product = @article.products.build(product_params)
    if @product.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @article = Article.find(params[:article_id])
    @product = @article.products.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :price, :main_image)
  end
end
