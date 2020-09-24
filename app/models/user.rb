class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :cookings

  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i

  with_options presence: true do
    validates :nick_name
    validates :password,            length: {minimum: 6 },
                                    format: { with: VALID_PASSWORD_REGEX},
                                    confirmation: true
    validates :email,               uniqueness: true

  end
end
