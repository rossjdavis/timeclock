class Rate < ApplicationRecord
  belongs_to :site

  validates :pay_rate, presence: true, numericality: { greater_than: 0 }
  validates :job_code, presence: true
end
