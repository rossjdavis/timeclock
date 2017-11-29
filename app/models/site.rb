class Site < ApplicationRecord

  has_many :jobs, dependent: :destroy

  has_many :logs, dependent: :destroy
  has_many :users, through: :logs
end
