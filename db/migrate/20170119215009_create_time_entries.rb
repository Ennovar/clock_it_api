class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.integer :task_id
      t.integer :user_id

      t.timestamps
    end
  end
end
