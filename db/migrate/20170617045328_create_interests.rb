class CreateInterests < ActiveRecord::Migration[5.0]
  def change
    create_table :interests do |t|
      t.string :item
      t.integer :contact_id
      t.integer :user_id

      t.timestamps
    end
  end
end
