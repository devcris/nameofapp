class OrdersController < ApplicationController

  def before_action :authenticate_user!
    end
    
def index
  @orders = Order.includes(:product).all
end

def show
  @order = Order.find(params[:id])
end

 def new
 end

 def create
 end

 def destroy
 end
end
