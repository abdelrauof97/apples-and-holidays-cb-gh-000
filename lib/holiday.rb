require 'pry'
   holiday_supplies =
      {
      :winter => {
        :christmas => ["Lights", "Wreath"],
        :new_years => ["Party Hats"]
      },
      :summer => {
        :fourth_of_july => ["Fireworks", "BBQ"]
      },
      :fall => {
        :thanksgiving => ["Turkey"]
      },
      :spring => {
        :memorial_day => ["BBQ"]
      }

    } 
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

second_supply_for_fourth_of_july(holiday_supplies)

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each { |k,v|
    v << supply
  }
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each { |k,v|
      puts k.to_s.capitalize
      v.each { |h,s|
       puts"  #{holiday.to_s.split('_').map {|w| w.capitalize }.join(' ') }: #{supplies.join(", ")}"

      }

  }

end
binding.pry
all_supplies_in_holidays(holiday_supplies)
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map { |k,v|
    v.map { |h,s|
      h if s.include?("BBQ")
      
    }
  }.flatten.compact

end






