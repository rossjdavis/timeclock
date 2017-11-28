class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:username]

  has_many :logs, dependent: :destroy
  has_many :sites, through: :logs

  def email_required?
    false
  end

  def email_changed?
    false
  end
end
