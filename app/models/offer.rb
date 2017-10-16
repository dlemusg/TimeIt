class Offer < ApplicationRecord
  belongs_to :user
  has_many :contracts
  has_many :categories, through: :ofert_categories
  #has_many :users, through: :requests
end
