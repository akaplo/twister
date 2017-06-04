class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.boolean :attending
      t.text :names
      t.text :food_choice

      t.timestamps
    end
  end
end
