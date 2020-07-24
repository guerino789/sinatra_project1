class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.string :brand
      t.string :style 
      t.string :color
      t.integer :size
      t.integer :price
    end
  end
end
