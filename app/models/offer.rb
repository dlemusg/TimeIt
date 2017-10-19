class Offer < ApplicationRecord
  belongs_to :user
  has_many :contracts
  belongs_to :category
  #has_many :users, through: :requests
end
