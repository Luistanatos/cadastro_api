namespace :dev do
  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    puts "Cadastro dos Times"
  10.times do |i|
    Team.create!(
      name: Faker::Football.team,
      description: Faker::Demographic.race,
      date_fundation:Faker::Date.between(35.years.ago, 18.years.ago),
      active: Faker::Boolean.boolean,
      #competition_id: Competition.all.sample
    )
    end
    puts "Times cadastrados com sucesso"

    ##############################

    puts "Cadastro dos Jogadores"

    10.times do |team|
      Player.create!(
        name: Faker::Football.player,
        date_born:Faker::Date.between(35.years.ago, 18.years.ago),
        team: Team.all.sample
      )
      end
      puts "Jogadores cadastrados com sucesso"

        #############################

        puts "Cadastro de Campeonatos"
      10.times do |team|
        Competition.create!(
          name: Faker::Football.competition,
          team_id: Team.all.sample
        )
        end
        puts "Campeonatos Cadastrados Com sucesso!!"
    end
  end