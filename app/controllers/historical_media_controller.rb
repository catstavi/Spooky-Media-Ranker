class HistoricalMediaController < ApplicationController

  def index
    @all_sorted = HistoricalMedium.all.sort_by { |medium| medium.rank }.reverse
  end

  def upvote
    medium = HistoricalMedium.find(params[:id])
    medium.rank += 1
    if medium.save
      redirect_to historical_media_path
    else
      redirect_to historical_media_path, notice: "You vote could not be counted."
    end
  end

end
