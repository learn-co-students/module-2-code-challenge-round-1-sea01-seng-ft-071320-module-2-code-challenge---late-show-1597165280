class ApperancesController < ApplicationController
    def new
        @episode = Episode.all
        @apperance = Apperance.new
    end

    def create

        # @episode = Episode.find(params[:id])
        @apperance = Apperance.new(apperance_params)
        if @apperance.save
            redirect_to episode_path(@episode)# need to figure out why it doesnt have the id
        else
            flash[:errors] = @apperance.errors.full_messages
            render :new
        end
    end

    private

    def apperance_params
        params.require(:apperance).permit(:guest_id, :episode_id, :rating)
    end
end
