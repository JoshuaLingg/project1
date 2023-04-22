class User < ApplicationRecord
  has_secure_password
  has_many :discussions
  has_many :notes
end
