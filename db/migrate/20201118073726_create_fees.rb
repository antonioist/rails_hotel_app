class CreateFees < ActiveRecord::Migration[5.2]
  def change
    create_table :fees do |t|
      t.integer :amount
      t.boolean :is_holyday
      t.references :room_category, foreign_key: true
      t.references :time_block, foreign_key: true

      t.timestamps
    end
  end
end
