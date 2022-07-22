class Public::RamensController < ApplicationController
  before_action :authenticate_customer!, except: [:index]

  def new
    @ramen = Ramen.new
  end

  def create
    @ramen = Ramen.new(ramen_params)
    @ramens = Ramen.all
    @ramen.customer_id = current_customer.id
    if @ramen.save
    else
      render :index
    end
  end

  def index
    @ramens = Ramen.all
    @ramen = Ramen.new
  end

  def destroy
    @ramen_destroy = Ramen.find(params[:id])
    @ramen_destroy.destroy
    redirect_to customer_path(current_customer)
  end



  private

  def ramen_params
    params.require(:ramen).permit(:image, :restaurant_name, :impression, :men_genre, :soup_genre)
  end
end
