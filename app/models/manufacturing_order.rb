class ManufacturingOrder < ApplicationRecord
  has_many :molding_daily_sheets
  has_one :product

end
