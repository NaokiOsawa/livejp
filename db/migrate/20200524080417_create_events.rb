class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :title
      t.date :date
      t.time :doors_open
      t.time :show_start
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
