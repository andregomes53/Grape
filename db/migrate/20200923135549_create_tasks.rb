class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.integer :state
      t.string :title
      t.integer :priority
      t.datetime :deadline

      t.timestamps
    end
  end
end
