class Activity < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :content, length: { maximum: 1000,
    too_long: "%{count} characters is the maximum allowed" }
end
