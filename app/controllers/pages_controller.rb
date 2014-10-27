class PagesController < ApplicationController

  def main
    @hist_ms = HistoricalMedium.all
    @fict_ms = FictionalMedium.all
    @curr_ms = CurrentMedium.all
  end

end
