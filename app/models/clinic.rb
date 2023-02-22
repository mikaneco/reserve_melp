class Clinic < ApplicationRecord
  has_many :staffs, dependent: :destroy
  accepts_nested_attributes_for :staffs, allow_destroy: true

  attribute :name, :string, default: ""
  attribute :building, :string, default: ""
  attribute :address, :string, default: ""
  attribute :city, :string, default: ""
  attribute :prefecture, :string, default: ""
  attribute :phone, :string, default: ""

  validates :name, presence: true, length: { maximum: 50 }, on: [:create, :update]
  validates :building, presence: true, length: { maximum: 50 }, on: :update
  validates :address, presence: true, length: { maximum: 50 }, on: :update
  validates :city, presence: true, length: { maximum: 50 }, on: :update
  validates :prefecture, presence: true, length: { maximum: 50 }, on: :update
  validates :phone, presence: true, length: { maximum: 50 }, on: :update
end
