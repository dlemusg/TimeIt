class Offer < ApplicationRecord
    searchkick word_start: [:nombre] # word_middle: [:nombre, :descripcion]
	has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
	validates_attachment :picture, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
    belongs_to :user
    has_many :contracts
    belongs_to :category

    validates :name, length: { maximum: 50 }
    validates :description, length: { maximum: 400 }
    validates :picture, presence: true
    validates :category, presence: true

    #has_many :users, through: :requests

    def des
      state = FALSE
    end

end
