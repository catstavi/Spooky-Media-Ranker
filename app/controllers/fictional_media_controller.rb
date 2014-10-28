class FictionalMediaController < ApplicationController
  
  def index
    @all_sorted = FictionalMedium.all.sort_by { |medium| medium.rank }.reverse
  end

  def upvote
    medium = FictionalMedium.find(params[:id])
    medium.rank += 1
    if medium.save
      redirect_to fictional_media_path
    else
      redirect_to fictional_media_path, notice: "You vote could not be counted."
    end
  end

end
