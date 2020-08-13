class EpisodesController < ApplicationController
  before_action :draw_episode, only: [ :show ]

  def index
    @episodes = Episode.all # 'SELECT * FROM episodes'
  end

  def show
  end

  private

  def draw_episode
    @episode = Episode.includes(:guests).find(params[:id]) # TIL about n + 1 queries!
  end
end
