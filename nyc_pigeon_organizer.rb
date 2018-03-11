def nyc_pigeon_organizer(data)
  # write your code here!

  #color gender lives
  new_hash = {}
  color_data = data[:color]
  gender_data = data[:gender]
  lives_data = data[:lives]

  #grab all the names and use array method uniq
  all_pigeons = []
  data.each_pair do |first_lvl_key, value_is_hash|
    value_is_hash.each_pair do |second_lvl_key, value_is_array|
      value_is_array.each do |pigeon_name|
      all_pigeons.push(pigeon_name)
      end
    end
  end
  all_pigeons.uniq!

  #build new hash by each pigeon
  all_pigeons.each do |pigeon|
    new_hash[pigeon] = {}
    new_hash[pigeon][:color] = []
    new_hash[pigeon][:gender] = []
    new_hash[pigeon][:lives] = []

    color_data.each_pair do |color, pigeon_array|
      current_location = new_hash[pigeon][:color]
      if pigeon_array.include?(pigeon)
        current_location.push(color.to_s)
      end
    end

    gender_data.each_pair do |gender, pigeon_array|
      current_array = new_hash[pigeon][:gender]
      if pigeon_array.include?(pigeon)
        current_array.push(gender.to_s)
      end
    end

    lives_data.each_pair do |lives, pigeon_array|
      current_array = new_hash[pigeon][:lives]
      if pigeon_array.include?(pigeon)
        current_array.push(lives.to_s)
      end
    end

  end
  new_hash
end
