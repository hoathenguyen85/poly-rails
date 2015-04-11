class Attribute < ActiveRecord::Base
  belongs_to :attribute, polymorphic: true
end
