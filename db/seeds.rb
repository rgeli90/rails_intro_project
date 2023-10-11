require "csv"
require "faker"

ChampionStat.delete_all
Champion.delete_all
Location.delete_all

ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='champions';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='locations';")
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='champion_stats';")

filename = Rails.root.join("db/ARAM_Golbal_September_Status.csv")

puts "Loading Champions from the CSV file #{filename}"

csv_data = File.read(filename)

champions_data = CSV.parse(csv_data, headers: true, encoding: "utf-8")

13.times do
  location = Location.create(name: Faker::Games::LeagueOfLegends.unique.location)
end

champ_location = Location.find(1)

champions_data.each do |c|
  champions = Champion.new(name: c["Champion"], location: champ_location)

  if champions && champions.valid?
    champions.build_champion_stat(
      games_played: c["Games played"],
      kda:          c["KDA"],
      win_rate:     c["Win Rate"],
      pick_rate:    c["Pick Rate"],
      ban_rate:     c["Ban Rate"],
      cs:           c["CS"],
      gold:         c["Gold"]
    )
  end
  champions.save
  puts "Champions not saved" unless champions&.valid?
  puts c["Champion"]
end

puts "Created #{Champion.count} Champions"
puts "Created #{ChampionStat.count} stats"
