class CatPoly < ActiveRecord::Base
	has_many :notes, as: :describe
	has_many :attributes, as: :attribute
end
