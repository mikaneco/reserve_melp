class Clinic < ApplicationRecord
  has_many :staffs, dependent: :destroy
  accepts_nested_attributes_for :staffs, allow_destroy: true

  validates :name, presence: true
  validates :building, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :prefecture, presence: true
  validates :phone, presence: true
end
