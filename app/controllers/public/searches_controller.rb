class Public::SearchesController < ApplicationController
  before_action :authenticate_customer!

  def search
    @range = params[:range]

    if @range == "会員"
      @customers = Customer.looks(params[:search], params[:word]).where(is_deleted: false)
    else
      @alive_customers = Customer.where(is_deleted: false)
      @ramens = Ramen.looks(params[:search], params[:word]).where(customer: @alive_customers)
    end
  end
end
