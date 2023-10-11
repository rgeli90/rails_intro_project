require "csv"
Stat.delete_all
Champion.delete_all
ActiveRecord::Base.connection.execute("DELETE FROM sqlite_sequence WHERE name='champions';")

filename = Rails.root.join("db/ARAM_Golbal_September_Status.csv")

puts "Loading Champions from the CSV file #{filename}"

csv_data = File.read(filename)

champions_data = CSV.parse(csv_data, headers: true, encoding: "utf-8")

champions_data.each do |c|
  champions = Champion.create(name: c["Champion"])

  if champions && champions.valid?
    champions.build_stat(
      games_played: c["Games played"],
      kda:          c["KDA"],
      win_rate:     c["Win Rate"],
      pick_rate:    c["Pick Rate"],
      ban_rate:     c["Ban Rate"],
      cs:           c["CS"],
      gold:         c["Gold"]
    )
    champions.save
  end
  puts "Champions not saved" unless champions&.valid?
  puts c["Champion"]
  puts champions.stat.games_played
end

puts "Created #{Champion.count} Champions"
puts "Created #{Stat.count} stats"
