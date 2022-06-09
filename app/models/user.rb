# require 'bcrypt'

class User < ApplicationRecord
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password
  validates_presence_of :password_digest
  has_secure_password
end
