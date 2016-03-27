class Inventory < ActiveRecord::Base 
  include Loggable 
  belongs_to :product
  belongs_to :warehouse
  validates :product, presence: true 
  validates :warehouse, presence: true 
  validates :stock, presence: true, 
  					numericality: { greater_than_or_equal_to: 0, 
  									lower_than_or_equal_to: 100 }

  def product_name    
    self.product.name  
  end
      
  def warehouse_name    
    self.warehouse.name  
  end
end
