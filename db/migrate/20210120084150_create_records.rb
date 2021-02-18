class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|

      t.integer :score
      t.integer :putt
      t.string :course
      t.string :member  
      t.integer :weather
      t.integer :wind
      t.integer :hole1
      t.integer :hole2
      t.integer :hole3
      t.integer :hole4
      t.integer :hole5
      t.integer :hole6
      t.integer :hole7
      t.integer :hole8
      t.integer :hole9
      t.integer :hole10
      t.integer :hole11
      t.integer :hole12
      t.integer :hole13
      t.integer :hole14
      t.integer :hole15
      t.integer :hole16
      t.integer :hole17
      t.integer :hole18
      t.integer :hole1_putt
      t.integer :hole2_putt
      t.integer :hole3_putt
      t.integer :hole4_putt
      t.integer :hole5_putt
      t.integer :hole6_putt
      t.integer :hole7_putt
      t.integer :hole8_putt
      t.integer :hole9_putt
      t.integer :hole10_putt
      t.integer :hole11_putt
      t.integer :hole12_putt
      t.integer :hole13_putt
      t.integer :hole14_putt
      t.integer :hole15_putt
      t.integer :hole16_putt
      t.integer :hole17_putt
      t.integer :hole18_putt
      t.string :memo
      t.string :prefecture_code
      t.string :member1
      t.string :member2
      t.string :member3
      t.integer :member1_score
      t.integer :member2_score
      t.integer :member3_score
      
      t.timestamps
    end
  end
end
