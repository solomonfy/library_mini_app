class User < ApplicationRecord
    has_many :checkouts
    has_many :books, through: :checkouts
    
    validates :name, presence: true, uniqueness: {case_sensitive: false}
    validates :address, presence: true
    
end
