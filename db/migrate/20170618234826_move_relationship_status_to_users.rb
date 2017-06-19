class MoveRelationshipStatusToUsers < ActiveRecord::Migration[5.0]
  def change
      remove_column :settings, :relationship_status
      add_column :users, :relationship_status, :string
  end
end
