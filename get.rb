
puts "starting..."
res = `curl "https://www.ombord.info/api/jsonp/position/"`

json_obj = res[1,res.length - 4]

file =  File.open('time.json', 'rb')
old_json = file.read
file.close

new_json = old_json[0,old_json.length - 2]
new_json += "\n,\n"
new_json += json_obj
new_json += "\n]"

puts "finished..."

file = File.open('time.json', 'w+')
file.write(new_json)
file.close

