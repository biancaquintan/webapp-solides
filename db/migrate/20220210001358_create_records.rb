class CreateRecords < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
      t.date :reference_day, null: false, default: Date.today
      t.time :checkin
      t.time :checkout
      t.time :lunch_start
      t.time :lunch_end
      t.text :observations
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
