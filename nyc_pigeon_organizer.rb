require "pry"

# pigeon_data = {
#   :color => {
#     :purple => ["Theo", "Peter Jr.", "Lucky"],
#     :grey => ["Theo", "Peter Jr.", "Ms. K"],
#     :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#     :brown => ["Queenie", "Alex"]
#   },
#   :gender => {
#     :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#     :female => ["Queenie", "Ms. K"]
#   },
#   :lives => {
#     "Subway" => ["Theo", "Queenie"],
#     "Central Park" => ["Alex", "Ms. K", "Lucky"],
#     "Library" => ["Peter Jr."],
#     "City Hall" => ["Andrew"]
#   }
# }

def get_names(data)
	array = []
	data.each do |key, value|
		value.each do |key, value|
			value.each do |element|
				array.push(element)
			end
		end
	end
	return array.uniq
end

def get_colors(color_hash, name)
	array =[]
	color_hash.each do |color_name, names_of_pigeons|
		if names_of_pigeons.include?(name)
			array.push(color_name.to_s)
	    end
	end
	return array
end

def get_gender(gender_hash, name)
	array = []
	gender_hash.each do |key, value|
		if value.include?(name)
			array.push(key.to_s)
		end
	end
	return array
end

def get_lives(lives_hash, name)
	array = []
	lives_hash.each do |key, value|
		if value.include?(name)
			array.push(key.to_s)
		end
	end
	return array
end


def nyc_pigeon_organizer(data)
  # write your code here!
  # get all the names of all the pigeons in an array .uniq
  #iterate through array
  #make each name a key in a new hash
  original = {}

 # 1) get names out of data

 names = get_names(data)

 # 2) iterate on names array
 names.each do |name|
 # 3) use name to find color
  	color = get_colors(data[:color], name)
 # 4) use name to find gender
 	gender = get_gender(data[:gender], name)
 # 5) use name to find out where pigeon lives
 	lives = get_lives(data[:lives], name)
 # 6) alter original with appropriate values
	original[name] = {:color => color, :gender => gender, :lives => lives}
   end
   return original
end
  #search through hash to find key /"name of pigeon"
  #in :color :colorname value

  #search through hash key to find name in :male or :female

  #search :lives :place array of values