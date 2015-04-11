class Note < ActiveRecord::Base
  belongs_to :describe, polymorphic: true
end
