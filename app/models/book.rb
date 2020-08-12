class Book < ApplicationRecord
    has_many :checkouts
    has_many :users, through: :checkouts
    validates :title, presence: true
    validates :author, presence: true
end
