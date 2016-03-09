class File
  # fname = "sample.txt"
  # somefile = File.open("sample.txt", "w")
  # somefile.puts "Hello file!"
  # somefile.close
  File.open("sample.txt", "w"){ |somefile| somefile.puts "Hello file!"}
  # file = File.open("sample.txt", "r")
  # contents = file.read
  # puts contents
  contents = File.open("sample.txt", "r") { |file| file.read }
  puts contents
  File.open("sample.txt").readlines.each do |line|
    puts line  
  end
  file = File.open("sample.txt", 'r')
  while !file.eof?
    line = file.readlines
    puts line
  end
end

require "open-uri"

remote_base_url = "https://en.wikipedia.org/wiki"
remote_page_name = "Ada_Lovelace"
remote_full_url = remote_base_url + "/" + remote_page_name

remote_data = open(remote_full_url).read
my_local_file = File.open("my-downloaded-page.html", "w")

my_local_file.write(remote_data)
my_local_file.close

