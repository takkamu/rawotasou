class Public::CustomersController < ApplicationController
  before_action :authenticate_customer!

  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @ramens = @customer.ramens

    #月別投稿数推移グラフ
    @ramen_by_month = @ramens.group_by_month(:created_at).size
    @chartlabels = @ramen_by_month.map(&:first).to_json.html_safe
    @chartdatas = @ramen_by_month.map(&:second)

    #会員別投稿一覧(新しい順)
    @ramens_new_order = @customer.ramens.order("created_at DESC")

    #会員がいいねした投稿一覧
    favorites = Favorite.where(customer_id: @customer.id).pluck(:ramen_id)
    @ramens_favorite = Ramen.where(id: favorites).order("created_at DESC")

    #フォロー
    @alive_followings = @customer.followings.where(is_deleted: false)
    @alive_followers = @customer.followers.where(is_deleted: false)

  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to customer_path(@customer)
    else
      render :edit
    end
  end

  def unsubscribe
    @customer = current_customer
  end

  def withdraw
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:email, :name, :introduction)
  end
end
