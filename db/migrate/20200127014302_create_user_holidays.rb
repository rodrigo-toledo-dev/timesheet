class CreateUserHolidays < ActiveRecord::Migration[6.0]
  def change
    create_table :user_holidays do |t|
      t.references :user, null: false, foreign_key: true
      t.references :holiday, null: false, foreign_key: true

      t.timestamps
    end
  end
end
