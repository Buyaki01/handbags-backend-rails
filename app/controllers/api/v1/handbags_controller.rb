class HandbagController < ActionController::Base
  def index
    @handbags = Handbag.all
    if @handbags
      render json: { success: true, message: 'Loaded all handbags', data: { handbags: @handbags } }, status: :ok
    else
      render json: { success: false, errors: 'Opps! Something went wrong' }, status: :unprocessable_entity
    end
  end
end