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
  
  pigeon_list = {}
	  
	  data.each do |key,values| #key == :color, values == {:purple=>["Theo", "Peter Jr.", "Lucky"],:grey=>["Theo", "Peter Jr.", "Ms. K"], etc
   
    values.each do |value,names| #value == :purple, names == ["Theo", "Peter Jr.", "Lucky"]
      
      names.each do |name| # name == "Theo"
        
        pigeon_list[name] ||= {} # If pigeon_list doesn't contain the key [name] it adds the key with a value of an empty hash
        
        pigeon_list[name][key] ||= [] # Adds the value[key] (:color) to [name] ("Theo") hash if it doesn't exist and gives it a value of an empty array. [key] is a key and a value name/key and key/[].
        
        pigeon_list[name][key] << value.to_s # Converts value (:purple) to string and adds it to the array value of [key]
        
      end
    end
  end
  pigeon_list
end

nyc_pigeon_organizer(pigeon_data)