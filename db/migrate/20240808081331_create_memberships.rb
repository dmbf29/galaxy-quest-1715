class CreateMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :memberships do |t|
      t.references :alien, null: false, foreign_key: true
      t.references :alliance, null: false, foreign_key: true

      t.timestamps
    end
  end
end
