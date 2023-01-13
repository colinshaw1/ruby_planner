class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :task
      t.string :description
      t.string :timeframe

      t.timestamps
    end
  end
end
