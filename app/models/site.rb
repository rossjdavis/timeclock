class Site < ApplicationRecord

  has_many :rates, dependent: :destroy

  has_many :logs, dependent: :destroy
  has_many :users, through: :logs

  validates :name, :address, presence: true
end
