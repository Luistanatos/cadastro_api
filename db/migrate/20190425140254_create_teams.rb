class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :description
      t.date :date_fundation
      t.boolean :active
      #t.integer :competition_id

      t.timestamps
    end
  end
end
