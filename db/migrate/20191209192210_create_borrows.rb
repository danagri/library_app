class CreateBorrows < ActiveRecord::Migration[6.0]
  def change
    create_table :borrows do |t|
      t.integer :book_id
      t.string :name
      t.string :who_borrow
      t.date :date_borrow
      t.date :date_return

      t.timestamps
    end
  end
end
