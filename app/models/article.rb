class Article < ApplicationRecord

  validates :titular, presence: true,
                    length: { minimum: 5 }

  validates :content, presence: true,
                    length: { minimum: 10 }

  validates @article, presence: false

  has_many :comments, dependent: :destroy
end
