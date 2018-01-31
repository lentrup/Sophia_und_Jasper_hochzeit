class Honeymoon < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :coming, presence: true
end
