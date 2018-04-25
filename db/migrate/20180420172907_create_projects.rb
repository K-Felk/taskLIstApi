class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.date :dueDate
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
