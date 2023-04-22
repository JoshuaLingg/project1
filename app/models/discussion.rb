class Discussion < ApplicationRecord
  belongs_to :note, :optional => true
  belongs_to :user, :optional => true
end
