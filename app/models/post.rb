class Post < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :content, presence: true
    belongs_to :user
    has_many :comments
end
