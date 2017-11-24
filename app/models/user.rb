class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  has_many :guarantees

  has_attached_file :avatar, styles: { medium: "800x800", thumb: "800x800" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
