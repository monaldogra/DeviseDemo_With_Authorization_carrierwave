class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,:confirmable, :lockable
         
  mount_uploader :avatar, AvatarUploader



  def role_symbols
    (roles || []).map {|r| r.title.to_sym}
  end

end


