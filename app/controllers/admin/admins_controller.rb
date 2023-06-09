class Admin::AdminsController < ApplicationController
  before_action :set_member, only: %i[show]

  def index
    @admins = Admin.all
  end

  def show; end

  private

  def set_member
    @member = Admin.find(params[:id])
  end
end
