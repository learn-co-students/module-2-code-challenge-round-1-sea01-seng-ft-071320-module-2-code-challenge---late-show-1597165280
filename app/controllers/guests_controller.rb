class GuestsController < ApplicationController
  before_action :draw_guest, only: [ :show ]

  def index
    @guests = Guest.all
  end

  def show
  end

  private

  def draw_guest
    @guest = Guest.includes(appearances: [ :episode ]).find(params[:id]) # TIL about n + 1 queries!
  end
end
