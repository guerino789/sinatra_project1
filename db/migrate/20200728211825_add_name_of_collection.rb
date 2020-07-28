class AddNameOfCollection < ActiveRecord::Migration
  def change
    add_column :collections, :collecton_of, :text
  end
end
