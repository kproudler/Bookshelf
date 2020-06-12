class Shelf < ApplicationRecord

    belongs_to_and_has :user
    has_many :books

    validates :user, presence: true

end
