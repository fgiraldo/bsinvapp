class Warehouse < ActiveRecord::Base 
	include Loggable 
	has_namy :invetories
 	has_many :products, through: :inventories
 	validates :name, presence: true, uniqueness: {case_sensitive: false}
end
