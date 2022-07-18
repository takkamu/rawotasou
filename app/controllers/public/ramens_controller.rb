class Public::RamensController < ApplicationController
  before_action :authenticate_customer!, except: [:index]

  def new
    @ramen = Ramen.new
  end

  def create
    @ramen = Ramen.new(ramen_params)
    @ramen.customer_id = current_customer.id
    if @ramen.save
      redirect_to ramens_path(@ramen)
    else
      render :new
    end
  end

  def index
    @ramens = Ramen.all
    @ramen = Ramen.new
  end

  def edit
  end



  private

  def ramen_params
    params.require(:ramen).permit(:image, :restaurant_name, :impression, :men_genre, :soup_genre)
  end
end
