class FishPoly < ActiveRecord::Base
	has_many :notes, as: :describable
	has_many :attrs, as: :attributable
end
