class Product < ActiveRecord::Base 
	include Loggable 
	belongs_to :category
	has_many :inventories
	has_many :warehouses, through: :inventories
	validates :name, presence: true, uniqueness: {case_sensitive: false} #valida el blanco y que sea unico
	validates :category, presence: true #valida que existe una categoria para el prodcuto
  
  def category_name    
	self.category.name  
  end
  
end
