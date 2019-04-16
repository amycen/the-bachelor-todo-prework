def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = ""
  data[season].each do |contestants|
    winner_name = contestants["name"].split if contestants["status"] == "Winner"
  end
  winner_name[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season, contestants|
    data[season].each do |contestant|
      name = contestant["name"] if contestant["occupation"] == occupation
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |contestants|
    count += 1 if contestants["hometown"] == hometown
  end
  count
end

def get_occupation(data, hometown)
  # code here

end

def get_average_age_for_season(data, season)
  # code here
end
