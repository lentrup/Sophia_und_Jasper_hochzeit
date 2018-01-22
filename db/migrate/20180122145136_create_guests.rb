class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :name
      t.string :email
      t.boolean :coming
      t.string :additional
      t.string :excuse

      t.timestamps
    end
  end
end
