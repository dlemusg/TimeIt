class User < ApplicationRecord
  before_validation(:on => :create) do
  #  self.password = "none"
   # self.password_confirmation = "none"
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #belongs_to :administrador, foreign_key: "administradors_id"
  has_many :offers
  has_many :contracts
 # has_many :offers, through: :requests
 # belongs_to :tiempo, foreign_key: "tiempos_id"


  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :trackable,
         :validatable

#no puede ser nulo ni vacio, unico
  validates :idd, presence: true, uniqueness: true
  #validates :edad, numericality: { only_integer: true }

end
 