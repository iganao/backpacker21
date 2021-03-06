class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :articles
  has_many :comments
  has_many :replies

  validates :nickname, presence: true

  PASSWORD_REGEX = /\A(?=.*?[A-z])(?=.*?\d)[A-z\d]+\z/i.freeze
  validates_format_of :password, with: PASSWORD_REGEX, message: 'Please type using half-width characters'

end
