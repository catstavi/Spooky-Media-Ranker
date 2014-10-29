class FictionalMedium < ActiveRecord::Base

  validates :name, :rank, presence: true
end
