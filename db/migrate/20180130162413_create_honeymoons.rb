class CreateHoneymoons < ActiveRecord::Migration[5.1]
  def change
    create_table :honeymoons do |t|
      t.string :name
      t.string :email
      t.boolean :coming
      t.string :additional
      t.string :comment
      t.boolean :caravan
      t.boolean :tent
      t.boolean :ownbus

      t.timestamps
    end
  end
end
