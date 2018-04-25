class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.date :dueDate
      t.text :notes
      t.integer :urgency
      t.binary :completed

      t.timestamps
    end
  end
end
