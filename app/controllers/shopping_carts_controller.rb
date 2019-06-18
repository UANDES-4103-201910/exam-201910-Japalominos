class ShoppingCartsController < ApplicationController
    def add_product
    session[:shopping_cart] ||= []
        begin
      product = Product.find(shopping_cart_params[:product_id])
            rescue
      logger.debug("[ShoppingCartsController::add_product] product don't found!")
      redirect_back fallback_location: root_path, flash: { error: "Invalid product!" } and return
    end
        
     shopping_cart_params[:amount].to_i.times {
      session[:shopping_cart] << shopping_cart_params[:product_id]
    }

    redirect_back fallback_location: root_path, flash: { notice: "Product added to shopping cart!" } and return
  end

  def remove_product

  end

  def index
    # Not much to do here...
  end

  private

  def shopping_cart_params
    params.permit(:utf8, :_method, :authenticity_token, :commit, :id, :product_id, :amount)
  end

end
