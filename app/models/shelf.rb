class Shelf < ApplicationRecord

    belongs_to :user
    has_one :user
    has_many :books

    validates :user, presence: true

end
