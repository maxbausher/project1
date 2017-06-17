class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :surname
      t.string :email
      t.string :password_digest
      t.string :gender
      t.date :birthday

      t.timestamps
    end
  end
end
