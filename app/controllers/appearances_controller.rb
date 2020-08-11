class AppearancesController < ApplicationController
  # Choose an existing guest from a select dropdown
  # - Choose an existing episode from a select dropdown
  # - Enter a numeric rating
  # - Submit the form

  def show
    @appearance = Appearance.find(params[:id])
  
  end 


  def index 
    @appearances = Appearance.all
  end 

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      
      redirect_to episode_path(:episode_id)  # <---this doesn't work right
    else
      flash[:error] = @appearance.errors.full_messages
      render 'new'
    end
  end
  
  
  private
  def appearance_params
    params.require(:appearance).permit(:episode_id,:guest_id, :rating)

  end


end
