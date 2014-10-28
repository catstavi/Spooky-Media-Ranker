class CurrentMediaController < ApplicationController

    def upvote
      medium = CurrentMedium.find(params[:id])
      medium.rank += 1
      if medium.save
        redirect_to current_media_path
      else
        redirect_to current_media_path, notice: "You vote could not be counted."
      end
    end

end
