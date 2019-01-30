class PrimaryComment < ApplicationRecord
  belongs_to :link
  belongs_to :user
  has_many :secondary_comment
end
