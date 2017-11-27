class User < ApplicationRecord
  has_many :logs, dependent: :destroy
  has_many :sites, through: :logs
end
