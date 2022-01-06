class AdminUser < ApplicationRecord
  rolify
  resourcify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  # after_create :assign_default_role

  #   def assign_default_role
  #     # self.add_role(:newuser) if self.roles.blank?
  #     user = AdminUser.find(1)
  #     user.add_role :moderator
  #   end
end
