class Contract < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  belongs_to :currency
end
