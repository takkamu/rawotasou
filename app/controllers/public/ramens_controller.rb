class Public::RamensController < ApplicationController
  before_action :authenticate_customer!, except: [:index]

  def new
    @ramen = Ramen.new
  end

  def create
    @ramen = Ramen.new(ramen_params)
    @ramens = Ramen.limit(20).order("created_at DESC")
    @ramen.customer_id = current_customer.id

    levelSetting = LevelSetting.find_by(level: current_customer.level + 1);
    if @ramen.save
      current_customer.update(experience_point: current_customer.experience_point + 10)
        if levelSetting.thresold <= current_customer.experience_point
          current_customer.level = current_customer.level + 1
          current_customer.update(level: current_customer.level)
        end
    else
      render :index
    end
  end


  def index
    @alive_customers = Customer.where(is_deleted: false)
    @ramens = Ramen.where(customer: @alive_customers).limit(20).order("created_at DESC")
    @ramen = Ramen.new
  end

  def destroy
    @ramen = Ramen.find(params[:id])
    @ramen.destroy
    redirect_to ramens_path
  end



  private

  def ramen_params
    params.require(:ramen).permit(:image, :restaurant_name, :impression, :men_genre, :soup_genre)
  end
end
