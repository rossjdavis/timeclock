class Job < ApplicationRecord
  belongs_to :site

  validates :rate, presence: true, numericality: { greater_than: 0 }
  validates :code, :name, presence: true
end
