class AppearancesController < ApplicationController
  def new
  end

  def create
    @appearance = Appearance.new(appearance_params)

    if @appearance.save
      # success
      flash[:message] = 'Appearance created successfully!'
      redirect_to episode_path(appearance_params[:episode_id]) # using appearance_params to avoid making an unnecessary database query here
    else
      # failure, error handling
      flash[:error_messages] = @appearance.errors.full_messages
      redirect_to new_appearance_path # this needs some flash trickery to pre-fill
    end
  end

  private

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
