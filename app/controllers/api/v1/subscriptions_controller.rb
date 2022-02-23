class Api::V1::SubscriptionsController < ApplicationController

  def index
    customer = Customer.find(params[:customer_id])
    if customer.subscriptions == []
      render json: {errors: {details: 'This subscription id or customer id does not exist.'}}, status: 404
    else
      render json: SubscriptionSerializer.new(Subscription.all.where(customer_id: customer.id))
    end 
  end

end
