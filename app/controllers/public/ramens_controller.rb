class Public::RamensController < ApplicationController
  def new
    @ramen = Ramen.new
  end

  def create
    @ramen = Ramen.new(ramen_params)
    @ramen.customer.id = current_customer.id
    if @ramen.save
      redirect_to public_root
    end
  end

  def index
    @ramens = Ramen.all
  end

  def edit
  end
  
  

  private

  def ramen_params
    params.require(:ramen).permit(:image, :restaurant_name, :men_genre, :soup_genre, :impression)
  end
end
