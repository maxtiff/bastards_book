require "open-uri"

# Declare URL variables
remote_base_url = "http://en.wikipedia.org/wiki/"
remote_page_name = "Samurai_champloo"
remote_full_url = remote_base_url + remote_page_name

puts "Downloading from: " + remote_full_url

# Declare variable to store html
remote_data = open(remote_full_url).read

# Create local file that will contain html from remote_data
local_file_name = remote_page_name + "_local_copy.html"

puts "Writing to: " + local_file_name

# Write html to local disk
local_file = open(local_file_name, "w")
local_file.write(remote_data)
local_file.close