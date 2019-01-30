class SecondaryComment < ApplicationRecord
  belongs_to :primary_comment
  belongs_to :user
end
