class Category < ActiveRecord::Base 
	include Loggable 
	has_many :products
	validates :name, presence: true, uniqueness: {case_sensitive: false}
end
