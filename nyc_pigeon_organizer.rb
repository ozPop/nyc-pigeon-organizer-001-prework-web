require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |attribute, attr_data|
    attr_data.each do |key, value|
      value.each do |name|
        # name check, add to new hash if not found
        if !pigeon_list.has_key?(name)
          pigeon_list[name] = {}
        end
        # attribute check, add if not found
        if !pigeon_list[name].has_key?(attribute)
          pigeon_list[name][attribute] = []
        end
        # push corresponding keys into *new hash attribute values*
        if value.include?(name)
          pigeon_list[name][attribute] << key.to_s
        end
        # binding.pry
      end
    end
  # binding.pry
  end
  pigeon_list
end

# nyc_pigeon_organizer(pigeon_data)