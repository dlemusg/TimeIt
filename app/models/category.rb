class Category < ApplicationRecord
  has_many :offers, through: :ofert_categories
end
