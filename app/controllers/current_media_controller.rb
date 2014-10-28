class CurrentMediaController < ApplicationController

    def index
      @all_sorted = CurrentMedium.all.sort_by { |medium| medium.rank }.reverse
    end

    def upvote
      medium = CurrentMedium.find(params[:id])
      medium.rank += 1
      if medium.save
        redirect_to current_media_path
      else
        redirect_to current_media_path, notice: "You vote could not be counted."
      end
    end

    def update
      # raise params.inspect
      @medium = CurrentMedium.find(params[:id])
      if @medium.update(cm_params)
        redirect_to @medium
      else
        render :edit
      end
    end

    private

    def cm_params
      params.require(:current_medium).permit(:name, :description, :born_on, :rank)
    end

end
