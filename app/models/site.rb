class Site < ApplicationRecord
  has_many :rates

  has_many :logs, dependent: :destroy
  has_many :users, through: :logs
end
