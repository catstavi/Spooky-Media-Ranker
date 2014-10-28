class HistoricalMediaController < ApplicationController

  def index
    @all_sorted = HistoricalMedium.all.sort_by { |medium| medium.rank }.reverse
  end

  def update
    # raise params.inspect
    @medium = HistoricalMedium.find(params[:id])
    if @medium.update(hm_params)
      redirect_to @medium
    else
      render :edit
    end
  end

  private

  def hm_params
    params.require(:historical_medium).permit(:name, :description, :born_on, :rank)
  end

end
