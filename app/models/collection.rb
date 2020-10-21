class Collection < ActiveRecord::Base
    
    validates_presence_of :brand, :style, :color, :size, :price

    belongs_to :user

end


