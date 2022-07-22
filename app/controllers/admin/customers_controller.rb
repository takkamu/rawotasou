class Admin::CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
    @ramens = @customer.ramens

    #投稿数推移グラフ
    #日別投稿数
    @ramen_by_day = @ramens.group_by_day(:created_at).size
    @chartlabels = @ramen_by_day.map(&:first).to_json.html_safe
    @chartdatas = @ramen_by_day.map(&:second)

    #累積投稿数
    @cumulative = []
    sum=0
    @chartdatas.each do |a|
      sum = sum + a
      @cumulative<<sum
    end
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
    params.require(:customer).permit(:name, :email, :is_deleted)
  end
end
