class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :institution
  has_many :worktimes
  has_many :subjects
  has_one  :course

  enum kind: [:student, :monitor, :admin]
 
end
