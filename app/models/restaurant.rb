class Restaurant < ApplicationRecord
  CATEGORY = %w(chinese french italian japanese belgian)
  has_many :reviews, dependent: :destroy
  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

end
