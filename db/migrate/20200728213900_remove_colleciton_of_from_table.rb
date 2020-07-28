class RemoveCollecitonOfFromTable < ActiveRecord::Migration
  def change
    remove_column :collections, :collecton_of, :text
  end
end
