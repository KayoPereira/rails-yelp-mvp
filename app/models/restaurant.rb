class Restaurant < ApplicationRecord
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]
  
  has_many :reviews, dependent: :destroy
  
  validates :name, presence: true
  validates :category, inclusion: { in: CATEGORY }, presence: true
  validates :address, presence: true
end
