class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :perfil

  validates_presence_of :perfil_id
  
  has_many :donacions, dependent: :destroy
  has_many :actividads, dependent: :destroy
end
