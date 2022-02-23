class Api::V1::TeasController < ApplicationController
  def show
    if Tea.exists?(params[:id])
      render json: TeaSerializer.new(Tea.find(params[:id]))
    else
      render json: {errors: {details: 'This tea id does not exist.'}}, status: 404
    end
  end

end
