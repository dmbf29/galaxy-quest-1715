class CreateAlliances < ActiveRecord::Migration[7.1]
  def change
    create_table :alliances do |t|
      t.string :name

      t.timestamps
    end
  end
end
