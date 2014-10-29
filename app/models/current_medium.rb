class CurrentMedium < ActiveRecord::Base
  validates :name, :rank, presence: true

end
