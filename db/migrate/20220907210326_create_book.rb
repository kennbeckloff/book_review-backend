class CreateBook < ActiveRecord::Migration[6.1]
  def change
    create_table :book do |t|
      t.string :bookId
      t.string :authors
      t.string :description
      t.string :title
      t.string :image      
    end
  end
end
