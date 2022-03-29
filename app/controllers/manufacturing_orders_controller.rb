class ManufacturingOrdersController < ApplicationController
  def index
    @manufacturing_orders = ManufacturingOrder.all
  end

  def new
    @manufacturing_order = ManufacturingOrder.new
  end

  def create
    @manufacturing_order = ManufacturingOrder.new(manufacturing_params)
    if @manufacturing_order.save
      redirect_to manufacturing_orders_path, notice: '製令創建成功'
    else
      render :new
    end
  end

  def edit

  end

  def destroy

  end

  private
  def manufacturing_params
    params.require(:manufacturing_order).permit(:manufacturing_order_no, :product_id, :production_quantity, :order_no, :order_quantity)
  end
end
