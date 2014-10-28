class PagesController < ApplicationController

  def main
    @hist_ms = HistoricalMedium.all.sort_by { |medium| medium.rank }.reverse.first(5)
    @fict_ms = FictionalMedium.all.sort_by { |medium| medium.rank }.reverse.first(5)
    @curr_ms = CurrentMedium.all.sort_by { |medium| medium.rank }.reverse.first(5)
  end

end
