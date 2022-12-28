class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :password, format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
  
  with_options presence: true do
    validates :nickname
    validates :gender_id
    validates :height
    validates :weight
    validates :birth
  end
  
  has_many :nutrients
end
