class Link < ApplicationRecord
  belongs_to :user
  has_many :primary_comment
end
