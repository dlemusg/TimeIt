class Offer < ApplicationRecord
    searchkick word_start: [:nombre] # word_middle: [:nombre, :descripcion]

    belongs_to :user
    has_many :contracts
    belongs_to :category
    #has_many :users, through: :requests
end
