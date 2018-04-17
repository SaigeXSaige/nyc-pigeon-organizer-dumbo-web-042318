require "pry"

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  color = data[:color].keys
  
  keys = value.values.flatten.uniq
  keys.each do |x|
    pigeon_list[x] = {}
  end
  
  data.each do |key, value|
    color.each do |x|
      if value[x].include?(key)
        binding.pry
      end
    end
  end
  
  data.each do |key, value|
    value.each do |k1, v1|
      pigeon_list.each do |k2, v2|
        if v1.include?(k2) 
          pigeon_list[k2][key] = [k1.to_s]
          if key == :color
            pigeon_list[k2][key] = color
            #binding.pry
          end
        end
      end
    end
  end
  
  
  pigeon_list
  binding.pry
end