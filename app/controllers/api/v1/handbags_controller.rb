class HandbagController < ActionController::Base
  def index
    @handbags = Handbag.all
    if @handbags
      render json: { success: true, message: 'Loaded all handbags', data: { handbags: @handbags } }, status: :ok
    else
      render json: { success: false, errors: 'Opps! Something went wrong' }, status: :unprocessable_entity
    end
  end

  def create
    @new_handbag = Handbag.new(name: params[:name], description: params[:description], photo: params[:photo], price: params[:price])
    if @new_handbag.save
      render json: { success: true, message: 'Handbag created', data: { handbag: @new_handbag } }, status: :created
    else
      render json: { success: false, errors: new_handbag.errors }, status: :unprocessable_entity
    end
  end
end