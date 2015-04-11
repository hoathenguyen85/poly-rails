class Attribute < ActiveRecord::Base
	# Remember this shows that it can belong to many table
	# the connection back to this polymorphic table is done
	# on the other end using has_many.  Use the same name
	# :attribute for the other table to know how to connect
	# the columns to this table
  belongs_to :attributable, polymorphic: true
  # makes a column in this table as the following
  # |------------------------------------------------|
  # | id  | attributable_id | attributable_type      |........OTHER COLUMN FOR THIS
  # |------------------------------------------------|
  # | 1   | 1               |  ClassName1            |
  # |------------------------------------------------|
  # | 2   | 2               |  ClassName1            |
  # |------------------------------------------------|
  # | 3   | 1               |  ClassName2            |
  # |------------------------------------------------|
  # | 4   | 2               |  ClassName2            |
  # |------------------------------------------------|
end
