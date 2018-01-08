class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :trackable, :validatable,
         :authentication_keys => [:username]

  has_many :logs, dependent: :destroy
  has_many :sites, through: :logs

  # validates :password, length: { is: 9 }, numericality: { only_integer: true }
  validates :username, presence: true, uniqueness: true
  validates :fst_name, :lst_name, presence: true, length: { minimum: 2 }

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
