class AddUserIdToCollectionTable < ActiveRecord::Migration
  def change
    add_column :collections, :user_id, :integer
  end
end
