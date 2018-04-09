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
-end 	+  data.each do |key,values|
+    values.each do |value,names|
+      names.each do |name|
+        pigeon_list[name] ||= {}
+        pigeon_list[name][key] ||= []
+        pigeon_list[name][key] << value.to_s
+      end
+    end
+  end
+  pigeon_list
+end
end
#def merge_recursively(a, b)
 # a.merge(b) {|key, a_item, b_item| merge_recursively(a_item, b_item) }
#end

nyc_pigeon_organizer(pigeon_data)