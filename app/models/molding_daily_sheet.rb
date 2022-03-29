class MoldingDailySheet < ApplicationRecord
  belongs_to :manufacturing_order
  has_many :molding_details
end
