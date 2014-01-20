require "open-uri"

# Declare URL variables
remote_base_url = "http://en.wikipedia.org/wiki/"
remote_page_name = "Samurai_champloo"
remote_full_url = remote_base_url + remote_page_name

# Declare variable to store html
remote_data = open(remote_full_url).read

# Create local file that will contain html from remote_data
local_file = open("downloaded_page.html", "w")

# Write html to local disk
local_file.write(remote_data)
local_file.close