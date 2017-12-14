class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
    	t.string :zadanie
    	t.text :opis_zadania
    end
  end
end
