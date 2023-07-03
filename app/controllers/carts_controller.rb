class CartsController < ApplicationController
  def show
    @render_cart = false
  end

  def add
    cart = find_or_create_cart

    @product = Product.find_by(id: params[:id])
    quantity = params[:quantity].to_i
    current_orderable = cart.orderables.find_by(product_id: @product.id)

    if current_orderable && quantity > 0
      current_orderable.update(quantity:)
    elsif quantity <= 0
      current_orderable.destroy
    else
      @cart.orderables.create(product: @product, quantity:)
    end
  end

  def remove
    Orderable.find_by(id: params[:id]).destroy
  end

  private

  def find_or_create_cart
    @cart ||= Cart.find_by(id: session[:cart_id]) || Cart.create

    session[:cart_id] = @cart.id

    @cart
  end
end
