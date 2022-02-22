class Api::V1::CustomersController < ApplicationController

  def show
    if Customer.exists?(params[:id])
      render json: CustomerSerializer.new(Customer.find(params[:id]))
    else
      render json: {errors: {details: 'This customer id does not exist.'}}, status: 404
    end
  end
end
