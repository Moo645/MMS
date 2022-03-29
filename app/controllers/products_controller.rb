class ProductsController < ApplicationController
  def index
    # console
    # @products = Product.all
    @products = Product.search(params[:product_no])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path, notice: '製令創建成功'
    else
      render :new
    end
  end

  def edit

  end

  def destroy

  end

  private

  def product_params
    params.require(:product).permit(:product_no)
  end

end
