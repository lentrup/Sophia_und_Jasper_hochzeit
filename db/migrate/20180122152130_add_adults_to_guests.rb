class AddAdultsToGuests < ActiveRecord::Migration[5.1]
  def change
    add_column :guests, :adult, :integer
    add_column :guests, :child, :integer
  end
end
