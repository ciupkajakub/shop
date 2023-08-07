class ShoppingCartsController < ApplicationController
  def show
    @render_shopping_cart = false
  end

  def add
    cart = find_or_create_cart

    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_shopping_cart_item = cart.shopping_cart_items.find_by(product_id: @product.id)

    if current_shopping_cart_item && quantity.positive?
      current_shopping_cart_item.update(quantity:)
    elsif quantity <= 0
      current_shopping_cart_item.destroy
    else
      @shopping_cart.shopping_cart_items.create(product: @product, quantity:)
    end
  end

  def remove
    ShoppingCartItem.find_by(id: params[:id]).destroy
  end

  private

  def find_or_create_cart
    @shopping_cart ||= ShoppingCart.find_by(id: session[:cart_id]) || ShoppingCart.create

    session[:cart_id] = @shopping_cart.id

    @shopping_cart
  end
end
