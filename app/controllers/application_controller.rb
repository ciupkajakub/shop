class ApplicationController < ActionController::Base
  before_action :set_render_cart
  before_action :initialize_cart

  def set_render_cart
    @render_shopping_cart = true
  end

  def initialize_cart
    @initialize_cart ||= ShoppingCart.find_by(id: session[:cart_id])
  end
end
