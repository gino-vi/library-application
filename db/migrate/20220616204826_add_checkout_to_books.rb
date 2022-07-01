class AddCheckoutToBooks < ActiveRecord::Migration
  def change
    add_column :books, :checked_out_by, :string
  end
end
