class Product < ActiveRecord::Base
	validates :title, :description, :price, :image_url, :presence => true
	
	validates :title, :uniqueness => true
	validates :price, numericality: {greater_than_or_equal_to: 0.01}
	validates :description, :length => { :maximum => 500 }
	validates :image_url, allow_blank: true, format: {
		with: %r{\.(gif|jpg|png)\Z}i,
		message: "Must be a URL link or a GIF, Jpeg, or PNG file type." 
	}
end
