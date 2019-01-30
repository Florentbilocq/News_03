class CreateSecondaryComments < ActiveRecord::Migration[5.2]
  def change
    create_table :secondary_comments do |t|
      t.string :body
      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :primary_comment, index: true
    end
  end
end
