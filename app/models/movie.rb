class Movie < ApplicationRecord
	belongs_to :user
	has_many :reviews
	has_many :theaters
	has_attached_file :image, styles: { medium: "400x600" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
 
  #after_create :movie_show_remainding

	# def movie_show_remainding
	# 	abort self.inspect
	# end
end
