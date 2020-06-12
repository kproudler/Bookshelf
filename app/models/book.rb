class Book < ApplicationRecord
    
    BOOK_GENRE = %w(fiction non-fiction).freeze

    has_many :shelves

    validates :genre, inclusion: BOOK_GENRE
    validates :title, :author, :year, presence: true

end