# require 'open-uri'
# url = "http://ruby.bastardsbook.com/files/fundamentals/hamlet.txt"
# # puts open(url).readline
# local_fname = "hamlet.txt"
# File.open(local_fname, "w") { |file| file.write(open(url).read)}

# File.open(local_fname, "r") do |file|
#     file.readlines.each_with_index do |line, idx|
#       puts line if idx % 42 == 41
#     end
# end 

# lines = ["Hello world", "How are you?", "*Fine*, thank you!.", " OK then."]
# lines.each do |line|
#   puts line if line.match(/^ [A-Z]/)
# end

#  line.strip.empty? == true
# if "Honey Ham is my favourite".match("Ham.")
#   puts "Hey, I just wanted to match 'Ham.' Ham with a dot!"
# end  

# # line.strip.empty? == true

# is_hamlet_speaking = false
# File.open("hamlet.txt", "r") do |file|
#   file.readlines.each do |line|

#     if is_hamlet_speaking == true && ( line.match(/^ [A-Z]/)|| line.strip.empty)
#       is_hamlet_speaking = false
#     end

#     is_hamlet_speaking = true if line.match("Ham\.")
    
#     puts line if is_hamlet_speaking == true
#   end
# end        


# lines = File.open("sample.txt", "r"){ |datafile| 
#    datafile.readlines
# }

# lines.each{|line| puts line}


# if File.exists?(filename)
#    puts "#{filename} exists"
# end


# dirname = "data-files"
# Dir.mkdir(dirname) unless File.exists?dirname
# File.open("#{dirname}/new-file.txt", 'w'){|f| f.write('Hello world!')} 

# puts Dir.glob('Downloads/*').length

# puts Dir.glob('Downloads/*.{pdf,PDF}').join(",\n")

# puts Dir.glob('Downloads/**/*').length 


# DIRNAME = "data-hold"
# Dir.glob("#{DIRNAME}/**/*.*").sort_by{|fname| File.size(fname)}.reverse[0..9].each do |fname|
#    puts "#{fname}\t#{File.size(fname)}"
# end

# DIRNAME = "data-hold"

# hash = Dir.glob("#{DIRNAME}/**/*.*").inject({}) do |hsh, fname|
#    ext = File.basename(fname).split('.')[-1].to_s.downcase
#    hsh[ext] ||= [0,0]
#    hsh[ext][0] += 1
#    hsh[ext][1] += File.size(fname)   
#    hsh
# end               
# File.open("file-analysis.txt", "w") do |f|
#    hash.each do |arr|
#      txt = arr.flatten.join("\t")
#       f.puts txt
#       puts txt
#    end
# end

require 'open-uri'

BASE_URL = "https://chart.googleapis.com/chart?cht=p&chs=500x300"
rows = File.open("file-analysis.txt"){|f| f.readlines.map{|p| p.strip.split("\t")} }

headers = rows[0]
[1,2].each do |idx|
   labels = []
   values = []
   rows[1..-1].each do |row|
      labels << row[0]
      values << row[idx]
   end
   
   remote_google_img = URI.encode"#{BASE_URL}&chl=#{labels.join('|')}&chd=t:#{values.join(',')}"
puts remote_google_img
  File.open('file-pie-chart.png', 'w'){|f| 
    f.write(open(remote_google_img))
  }
end