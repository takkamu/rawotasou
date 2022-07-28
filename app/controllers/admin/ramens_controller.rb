class Admin::RamensController < ApplicationController

  def index
    @ramens = Ramen.all.order("created_at DESC")
  end

  def destroy
    @ramen = Ramen.find(params[:id])
    @ramen.destroy
    redirect_to admin_ramens_path(@customer)
  end

end
