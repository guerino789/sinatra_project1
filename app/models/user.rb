class User < ActiveRecord::Base
    has_secure_password
    has_many :collections 

    validates :username, :uniqueness => {:case_sensitive => false}
end