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
  data.each do |season, contestants|
    data[season].each do |contestant|
      count += 1 if contestant["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season, contestants|
    data[season].find do |contestant|
      occupation = contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  age_sum = 0
  count = 0
  data[season].each do |contestant|
    age_sum += contestant["age"].to_i
  end
  age_sum / data[season].count
end
