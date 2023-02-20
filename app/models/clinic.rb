class Clinic < ApplicationRecord
  validates :name, presence: true
  validates :building, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :prefecture, presence: true
  validates :phone, presence: true
end
