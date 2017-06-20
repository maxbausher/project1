class CreateGifts < ActiveRecord::Migration[5.0]
  def change
    create_table :gifts do |t|
      t.string :title
      t.string :summary
      t.float :price
      t.integer :contact_id

      t.timestamps
    end
  end
end
