class Admin::RamensController < ApplicationController
  before_action :authenticate_admin!

  def index
    @alive_customers = Customer.where(is_deleted: false)
    @ramens = Ramen.where(customer: @alive_customers).all.order("created_at DESC")
  end

  def destroy
    @ramen = Ramen.find(params[:id])
    @ramen.destroy
    redirect_to admin_ramens_path(@customer)
  end

end
