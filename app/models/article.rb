class Article < ApplicationRecord
  has_one :task
  has_many :activities, dependent: :destroy
end
