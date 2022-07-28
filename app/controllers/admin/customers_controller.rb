class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!

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
      redirect_to admin_customer_path(@customer)
    else
      render :edit
    end
  end

  private

  def customer_params
    params.require(:customer).permit(:name, :email, :introduction, :is_deleted)
  end
end
