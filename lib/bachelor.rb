def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = ""
  data[season].each do |contestants|
    winner_name = contestants["name"].split if ["status"] == "Winner"
    winner_name = winner_name[0]
  end
  winner_name
end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
