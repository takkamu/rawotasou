class Public::RelationshipsController < ApplicationController
  def create
    current_customer.follow(params[:customer_id])
    @customer = Customer.find(params[:customer_id])
    @alive_followings = @customer.followings.where(is_deleted: false)
    @alive_followers = @customer.followers.where(is_deleted: false)
  end

  def destroy
    current_customer.unfollow(params[:customer_id])
    @customer = Customer.find(params[:customer_id])
    @alive_followings = @customer.followings.where(is_deleted: false)
    @alive_followers = @customer.followers.where(is_deleted: false)
  end

  def followings
    customer = Customer.find(params[:customer_id])
    @customers = customer.followings.where(is_deleted: false)
  end

  def followers
    customer = Customer.find(params[:customer_id])
    @customers = customer.followers.where(is_deleted: false)
  end
end
