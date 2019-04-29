class AddTeamToCompetition < ActiveRecord::Migration[5.2]
  def change
    add_reference :competitions, :team, foreign_key: true
  end
end
