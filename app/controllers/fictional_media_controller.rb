class FictionalMediaController < ApplicationController

  def index
    @all_sorted = FictionalMedium.all.sort_by { |medium| medium.rank }.reverse
  end

  def show
    @medium = FictionalMedium.find(params[:id])
  end

  def new
    @medium = FictionalMedium.new
  end

  def edit
    @medium = FictionalMedium.find(params[:id])
  end

  def create
    @medium = FictionalMedium.new(fm_params)
    if @medium.save
      redirect_to @medium
    else
      render :new
    end
  end

  def update
    # raise params.inspect
    @medium = FictionalMedium.find(params[:id])
    if @medium.update(fm_params)
      redirect_to @medium
    else
      render :edit
    end
  end

  private

  def fm_params
    params.require(:fictional_medium).permit(:name, :description, :context, :rank)
  end


end
