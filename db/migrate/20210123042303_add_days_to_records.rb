class AddDaysToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :days, :date
  end
end
