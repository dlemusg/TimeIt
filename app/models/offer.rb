class Offer < ApplicationRecord
    searchkick word_start: [:nombre] # word_middle: [:nombre, :descripcion]
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    belongs_to :user
    has_many :contracts
    belongs_to :category

    #has_many :users, through: :requests
end
