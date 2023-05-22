class CreatePairs < ActiveRecord::Migration[7.0]
  def change
    create_table :pairs do |t|
      t.integer :activity_id, null: false
      t.integer :student_one_id, null: false
      t.integer :student_two_id, null: false

      t.timestamps
    end
  end
end
