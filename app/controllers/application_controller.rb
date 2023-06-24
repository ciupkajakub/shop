class ApplicationController < ActionController::Base
  before_action :set_render_cart
  before_action :initialize_cart

  def set_render_cart
    @render_cart = true
  end

  def initialize_cart
    @cart ||= Cart.find_by(id: session[:cart_id])
    # TODO: do not initialize empty cart every time, we need that only when someone adds a product to the cart
    create_cart if @cart.nil?
  end

  private

  def create_cart
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end
end
