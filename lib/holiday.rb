require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash.each do |key, value|
    if key == :summer
      value.each do |key, value|
        if key == :fourth_of_july
          return value[1]
        end
      end
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holidays|
    if season == :winter
      holidays.each do |holiday, supplies|
#        binding.pry
        supplies << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |seasons, holidays|
    if seasons == :spring
      holidays.each do |holiday, supplies|
        if holiday == :memorial_day
          supplies << supply
        end
      end
    end
  end
  holiday_hash
#  binding.pry
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash.each do |seasons, holidays|
    if seasons == season
      holidays[holiday_name] = supply_array
    end
  end
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  temp_supplies = []
  holiday_hash.each do |seasons, holidays|
    if seasons == :winter
      holidays.each do |holiday, supplies|
        supplies.each do |supply|
          temp_supplies << supply
        end
      end
    end
  end
  temp_supplies
#  binding.pry
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  temp_season_str = ""
  temp_holiday_str = ""
  output_sentence = ""

  holiday_hash.each do |seasons, holidays|
    temp_season_str = seasons.to_s.capitalize
    puts "#{temp_season_str}:"

    holidays.each do |holiday, supplies|
      output_sentence = ""
      temp_holiday_str = ""
      temp_holiday_str = holiday.to_s
      temp_array = temp_holiday_str.split("_")
      temp_array.each {|x| x.capitalize!}
      temp_holiday_str = temp_array.join(" ")
      output_sentence << "  " + temp_holiday_str + ": "
      output_sentence << supplies.join(", ")
      puts output_sentence
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          bbq_holidays << holiday
        end
      end
    end
  end
  bbq_holidays

end
