class AppearancesController < ApplicationController

    def new
        @appearance = Appearance.new
    end

    def create
        @appearance = Appearance.new(appearance_params)
        if @appearance.save
          redirect_to @appearance.episode
        else
        flash[:errors] = @appearance.errors.full_messages
          render 'new'
        end
    end
    
private 

def appearance_params
    params.require(:appearance).permit(:rating, :guest_id, :episode_id)
end
end

