class Public::RamensController < ApplicationController
  def new
    @ramen = Ramen.new
  end

  def create
    @ramen = Ramen.new(book_params)
    if @ramen.save
      redirect_to public_root
    end
  end

  def index
  end

  def edit
  end

  private

  def ramen_params
    params.require(:ramen).permit(:restaurant_name, :men_genre, :soup_genre, :impression)
  end
end
