class AddCohortForeignKeyToPair < ActiveRecord::Migration[7.0]
  def change
    add_column :pairs, :cohort_id, :integer
  end
end
