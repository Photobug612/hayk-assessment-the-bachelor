require "pry"

def all_season
  data.values.flatten
end

def get_first_name_of_season_winner(data, season)
  data[season].find do |s|
    s["status"] = "Winner"
  end ["name"].split(" ").first
end


def get_contestant_name(data, occupation)
  all_season.find do |job|
    job["occupation"] == occupation
  end ["name"]
end

def count_contestants_by_hometown(data, hometown)
  all_season.count do |home|
    home["hometown"] == hometown
  end
end

def get_occupation(data, hometown)
  all_season.find do |home|
    home["hometown"] == hometown
  end ["occupation"]
end

def get_average_age_for_season(data, season)
      age = 0
      data[season].each do |people|
        age += people["age"].to_i
      end
        average = age.to_f/data[season].length
        average.round
end
