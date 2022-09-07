class CreateComment < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :commentBody
      t.string :username
      t.datetime :createdAt
    end
  end
end
