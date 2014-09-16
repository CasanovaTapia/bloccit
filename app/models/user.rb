class User < ActiveRecord::Base
  has_many :posts
  mount_uploader :avatar, AvatarUploader
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  def role?(base_role)
    role == base_role.to_s
  end
end
