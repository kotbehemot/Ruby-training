require 'bcrypt'

class User < ActiveRecord::Base
  # new columns need to be added here to be writable through mass assignment
  attr_accessible :username, :email, :password, :password_confirmation

  #####
  # associations
  #####
  has_many :posts, :inverse_of => :user


  attr_accessor :password
  before_save :prepare_password

  validates :username,
    :presence => true,
    :uniqueness => true,
    :format => {:with => /^[-\w\._@]+$/i, :allow_blank => true}
  validates :email, 
    :presence => true,
    :format => {:with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :allow_blank => true}
  validates :password, 
    :on => :create,
    :presence => true
  validates :password,
    :confirmation => true,
    :length => {:minimum => 4},
    :allow_blank => true

  # login can be either username or email address
  def self.authenticate(login, pass)
    user = find_by_username(login) || find_by_email(login)
    return user if user && user.password_hash == user.encrypt_password(pass)
  end


  def encrypt_password(pass)
    BCrypt::Engine.hash_secret(pass, password_salt)
  end

  private

  def prepare_password
    unless password.blank?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = encrypt_password(password)
    end
  end
end
