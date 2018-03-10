require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  all_names = []

  data.each do |info, value|
    value.each do |spec, name_array|
      i = 0
      while i < name_array.length
        if pigeon_list[name_array[i]] != nil
          if pigeon_list[name_array[i]][info] != nil
            pigeon_list[name_array[i]][info] << spec.to_s
          else
            pigeon_list[name_array[i]][info] = []
            pigeon_list[name_array[i]][info] << spec.to_s
          end
          i += 1
        else #creates new pigeon hash
          pigeon_list[name_array[i]] = {}
          pigeon_list[name_array[i]][info] = []
          pigeon_list[name_array[i]][info] << spec.to_s #pigeon_list[name] = spec such as color gender or lives
          # binding.pry
          # pigeon_list[name_array[i]][info] = []
          # pigeon_list[name_array[i]][info] << spec
          # binding.pry
          i += 1
        end
      end
      # binding.pry
    end
  end

  # j = 0
  # while j < all_names.length
  #   pigeon_list[all_names[j]] = {}
  # end

  # binding.pry
  pigeon_list
end
