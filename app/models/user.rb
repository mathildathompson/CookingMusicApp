class User < ActiveRecord::Base
  attr_accessible :name
  attr_accessible :email
  attr_accessible :password_digest

  has_secure_password

  # validates :email, :presence => true
end
