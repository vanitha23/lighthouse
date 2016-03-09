require 'rubygems'
require 'rest-client'

wiki_url = "http://en.wikipedia.org/"
# puts RestClient.get(wiki_url)
# wiki_url = "http://en.wikipedia.org/"
wiki_local_filename = "wiki-page.html"

File.open(wiki_local_filename, "w") do |file|
  file.write(RestClient.get(wiki_url))
end