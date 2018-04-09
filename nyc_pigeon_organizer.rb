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
  data.each do |category, attribute|
    if category == :color
    attribute.each do |attribute, name|
      name.each do |pigeon_name|
        if pigeon_list.include?(pigeon_name) == false
          pigeon_list[pigeon_name] = {color: [attribute.to_s]}
        else
          pigeon_list[pigeon_name][:color] << attribute.to_s
          #binding.pry
        end
      end
    end
  end
  end
  h = {"Theo" => {:color => ["blue"]}}
  i = {"Theo" => {:color => ["white"]}}
  #h.merge(i) { |k, x, y| x + (y ? y : []) }
  #h.merge(i)
  merge_recursively(h, i)
  pigeon_list.merge(h)
  
  binding.pry
end
def merge_recursively(a, b)
  a.merge(b) {|key, a_item, b_item| merge_recursively(a_item, b_item) }
end

nyc_pigeon_organizer(pigeon_data)