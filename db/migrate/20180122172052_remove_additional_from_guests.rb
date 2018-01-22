class RemoveAdditionalFromGuests < ActiveRecord::Migration[5.1]
  def change
    remove_column :guests, :additional, :string
  end
end
