class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :status, :checked_out_by

  STATUS = [
    ["Available", 1],
    ["On hold", 2],
    ["Checked out", 3],
    ["Late", 4]
  ]

end
