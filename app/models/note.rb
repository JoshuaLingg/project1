class Note < ApplicationRecord
  has_many :discussions
  belongs_to :user
end
