class Public::RanksController < ApplicationController
  def rank
  # ユーザーの投稿数ランキング
  @customer_ramen_ranks = Customer.where(id: Ramen.group(:customer_id).order('count(customer_id) desc').pluck(:customer_id))
  end
end
