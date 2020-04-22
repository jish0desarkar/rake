class CreateCsvDates < ActiveRecord::Migration[6.0]
  def change
    create_table :csv_dates do |t|
      t.string :csv_id
      t.string :source
      t.string :target

      t.timestamps
    end
  end
end
