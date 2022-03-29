class Product < ApplicationRecord
  has_many :manufacturing_orders

  def self.search(product_no)
    if product_no
      where("product_no LIKE ?", "%#{product_no}%")
      else
        all
    end
  end

end
