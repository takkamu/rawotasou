class Public::SearchesController < ApplicationController
  before_action :authenticate_customer!

  def search
    @range = params[:range]

    if @range == "会員"
      @customers = Customer.looks(params[:search], params[:word]).where(is_deleted: false)
    else
      @ramens = Ramen.looks(params[:search], params[:word])
    end
  end
end
