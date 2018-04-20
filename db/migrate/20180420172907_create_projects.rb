class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :dueDate
      t.text :description
      t.text :notes

      t.timestamps
    end
  end
end
