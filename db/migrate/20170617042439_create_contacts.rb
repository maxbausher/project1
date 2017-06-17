class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :gender
      t.string :location
      t.string :relationship_status
      t.date :birthday
      t.integer :user_id

      t.timestamps
    end
  end
end
