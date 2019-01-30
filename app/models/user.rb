class User < ApplicationRecord
  has_many :link
  has_many :primary_comment
  has_many :secondary_comment
end
