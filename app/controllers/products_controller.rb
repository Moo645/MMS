class ProductsController < ApplicationController
  before_action :find_product, only: [:show, :edit, :destroy]

  def index
    # console
    # @products = Product.all
    @product = Product.new
    @products = Product.search(params[:product_no])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      turbo_stream 
    else
      render :new
    end
  end

  def edit

  end

  def destroy
    if @product.destroy
      turbo_stream
    end
  end

  private

  def product_params
    params.require(:product).permit(:product_no)
  end

  def find_product
    @product = Product.find_by(id: params[:id])
  end

end
