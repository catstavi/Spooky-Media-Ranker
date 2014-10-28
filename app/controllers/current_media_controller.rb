class CurrentMediaController < ApplicationController

    def index
      @all_sorted = CurrentMedium.all.sort_by { |medium| medium.rank }.reverse
    end

    def show
      @medium = CurrentMedium.find(params[:id])
    end

    def destroy
      @medium = CurrentMedium.find(params[:id])
      @medium.destroy
      redirect_to root_path
    end

    def update
      @medium = CurrentMedium.find(params[:id])
      if @medium.update(cm_params)
        redirect_to @medium
      else
        render :edit
      end
    end

    def new
      @medium = CurrentMedium.new
    end

    def edit
      @medium = CurrentMedium.find(params[:id])
    end

    private

    def cm_params
      params.require(:current_medium).permit(:name, :description, :hometown, :rank)
    end

end
