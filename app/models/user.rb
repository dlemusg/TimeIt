class User < ApplicationRecord


  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :photoId1, styles: { medium: "300x300>", thumb: "100x100>" }
  has_attached_file :photoId2, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :photo, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_attachment :photoId1, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  validates_attachment :photoId2, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
  
  before_validation(:on => :create) do

  #  self.password = "none"
   # self.password_confirmation = "none"
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  #belongs_to :administrador, foreign_key: "administradors_id"
  has_many :offers
  has_many :contracts
  has_many :califications
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
  validates :photo, presence: true
  validates :photoId1, presence: true
  validates :photoId2, presence: true
  validates :description, length: { maximum: 200 }
  
  #validates :edad, numericality: { only_integer: true }

end
 