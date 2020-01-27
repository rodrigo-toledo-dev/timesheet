class CreateHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :holidays do |t|
      t.string :name
      t.date :date_as
      t.integer :regional

      t.timestamps
    end
  end
end
