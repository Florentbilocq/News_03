class CreatePrimaryComments < ActiveRecord::Migration[5.2]
  def change
    create_table :primary_comments do |t|
      t.string :body
      t.timestamps
      t.belongs_to :user, index: true
      t.belongs_to :link, index: true
    end
  end
end
