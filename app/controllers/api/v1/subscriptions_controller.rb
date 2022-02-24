class Api::V1::SubscriptionsController < ApplicationController

  def index
    customer = Customer.find(params[:customer_id])
    subscriptions = customer.subscriptions.find_all
    if customer.subscriptions == []
      render json: {errors: {details: 'This subscription id or customer id does not exist.'}}, status: 404
    else
      render json: SubscriptionSerializer.new(subscriptions)
    end
  end

  def create
    customer = Customer.find(params[:customer_id])
    subscription = Subscription.create(subscription_params)

    if subscription.save
      render json: SubscriptionSerializer.new(subscription)
    else
      render json: {errors: {details: 'This subscription was not created.'}}, status: 400
    end
  end

  def update
    subscription = Subscription.find(params[:id])
    subscription.update(subscription_params)

    if subscription.save
      render json: SubscriptionSerializer.new(subscription)
    else
      render json: {errors: {details: 'This subscription was not updated.'}}, status: 400
    end
  end



  private
  def subscription_params
    params.permit(:id, :title, :status, :price, :frequency, :customer_id, :tea_id)
  end
end
