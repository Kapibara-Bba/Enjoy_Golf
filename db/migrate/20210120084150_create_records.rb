class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|

      t.integer :score
      t.integer :putt
      t.string :course
      t.string :member
      t.timestamps
    end
  end
end
