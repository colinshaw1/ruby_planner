class CreateConts < ActiveRecord::Migration[7.0]
  def change
    create_table :conts do |t|
      t.string :frist_name
      t.string :last_name
      t.string :email
      t.string :number

      t.timestamps
    end
  end
end
