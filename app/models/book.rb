class Book < ApplicationRecord
    
    BOOK_GENRE = %w(fiction non-fiction).freeze

    validates :genre, inclusion: BOOK_GENRE
    validates :title, :author, :year, presence: true

    belongs_to :shelves

end