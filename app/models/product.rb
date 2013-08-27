class Product < ActiveRecord::Base
  
  attr_accessible :description, :image_url, :price, :title, :photo
	
	default_scope :order=> "title"

	validates :price, :title, :image_url, :description, :presence=> true
	validates :price, :numericality => {:greater_than_or_equal_to=> 0.01}
	validates_uniqueness_of :title
	validates :image_url, :format => { :with => %r{\.(gif|jpg|png|jpeg)$}i, :message => "must be gif, jpg, png or jpeg. "}

	has_attached_file :photo, :styles => {:small => "150*150>"}
end	
