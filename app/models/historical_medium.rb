class HistoricalMedium < ActiveRecord::Base
  validates :name, :rank, presence: true

end
