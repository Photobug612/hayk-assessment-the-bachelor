require "pry"

def all_seasons
  data.values.flatten
end


def get_first_name_of_season_winner(data, season)
  data[season].find do |contestant|
    contestant["status"] == "Winner"
  end ["name"].split(" ").first
end

def get_contestant_name (data, occupation)
  all_seasons.find do |contestant|
    contestant["occupation"] == occupation
  end ["name"]
end

def count_contestants_by_hometown(data, hometown)
  all_seasons.count { |contestant| contestant["hometown"] == hometown}
end

def get_occupation(data, hometown)
  all_seasons.find do |contestant| 
    contestant["hometown"] == hometown
  end ["occupation"]
end 

def get_average_age_for_season(data, season)
  age = 0
  data[season].each do |contestant|
   age += contestant["age"].to_i
  end
  average = age.to_f/data[season].length
  average.round
end