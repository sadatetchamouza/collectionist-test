class CreateOpeningHours < ActiveRecord::Migration[6.1]
  def change
    create_table :opening_hours do |t|
      t.integer :day_of_week
      t.time :start_at
      t.time :end_at
      t.time :second_start_at
      t.time :second_end_at
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
