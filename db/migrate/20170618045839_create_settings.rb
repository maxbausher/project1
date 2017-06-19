class CreateSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :settings do |t|
      t.string :relationship_status
      t.string :credit_card_full_name
      t.integer :credit_card_number
      t.integer :expiration_date
      t.integer :csv
      t.string :credit_card_type
      t.integer :user_id

      t.timestamps
    end
  end
end
