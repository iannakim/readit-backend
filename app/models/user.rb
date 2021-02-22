class User < ApplicationRecord
  has_many :activities, dependent: :destroy
  has_secure_password

  validates :firstname, :lastname, :email, :password, presence: true
  validates :firstname, format: { with: /\A[a-zA-Z]+\z/, message: "please use letters only" }
  validates :lastname, format: { with: /\A[a-zA-Z]+\z/, message: "please use letters only" }
  validates :email, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 6..20 }

end
