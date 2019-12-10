class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :name
      t.integer :author_id
      t.integer :genre_id
      t.text :description

      t.timestamps
    end
  end
end
