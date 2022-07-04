class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :consoles
  has_many :reservations

  has_one_attached :pp

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  validates :email, format: { with: Devise.email_regexp }

end
