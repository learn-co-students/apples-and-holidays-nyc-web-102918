
[1mFrom:[0m /home/Rakugen/apples-and-holidays-nyc-web-102918/lib/holiday.rb @ line 107 Object#all_supplies_in_holidays:

     [1;34m92[0m: [32mdef[0m [1;34mall_supplies_in_holidays[0m(holiday_hash)
     [1;34m93[0m:   [1;34m# iterate through holiday_hash and print items such that your readout resembles:[0m
     [1;34m94[0m:   [1;34m# Winter:[0m
     [1;34m95[0m:   [1;34m#   Christmas: Lights, Wreath[0m
     [1;34m96[0m:   [1;34m#   New Years: Party Hats[0m
     [1;34m97[0m:   [1;34m# Summer:[0m
     [1;34m98[0m:   [1;34m#   Fourth Of July: Fireworks, BBQ[0m
     [1;34m99[0m:   [1;34m# etc.[0m
    [1;34m100[0m:   temp_season_str = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m101[0m:   temp_holiday_str = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m102[0m:   output_sentence = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m103[0m: 
    [1;34m104[0m:   holiday_hash.each [32mdo[0m |seasons, holidays|
    [1;34m105[0m:     temp_season_str = seasons.to_s.capitalize
    [1;34m106[0m:     puts [31m[1;31m"[0m[31m#{temp_season_str}[0m[31m:[1;31m"[0m[31m[0m
 => [1;34m107[0m:     binding.pry
    [1;34m108[0m:     holidays.each [32mdo[0m |holiday, supplies|
    [1;34m109[0m:       temp_holiday_str = holiday.to_s
    [1;34m110[0m:       temp_array = temp_holiday_str.split([31m[1;31m"[0m[31m_[1;31m"[0m[31m[0m)
    [1;34m111[0m:       temp_array.each {|x| x.capitalize!}
    [1;34m112[0m:       temp_holiday_str = temp_array.join([31m[1;31m"[0m[31m [1;31m"[0m[31m[0m)
    [1;34m113[0m:       output_sentence << [31m[1;31m"[0m[31m  [1;31m"[0m[31m[0m + temp_holiday_str + [31m[1;31m"[0m[31m: [1;31m"[0m[31m[0m
    [1;34m114[0m:       output_sentence << supplies.join([31m[1;31m"[0m[31m, [1;31m"[0m[31m[0m)
    [1;34m115[0m:       puts output_sentence
    [1;34m116[0m: 
    [1;34m117[0m:     [32mend[0m
    [1;34m118[0m:   [32mend[0m
    [1;34m119[0m: 
    [1;34m120[0m: [32mend[0m

