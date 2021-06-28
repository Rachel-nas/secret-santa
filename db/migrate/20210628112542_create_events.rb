class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.integer :gift_amount
      t.date :event_date

      t.timestamps
    end
  end
end
