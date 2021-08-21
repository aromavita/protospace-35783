class Prototype < ApplicationRecord

    validates :prototype, :catch_copy, :concept, :image, presence: true


    belongs_to :user
    has_one_attached :image
    has_many :comments

end




