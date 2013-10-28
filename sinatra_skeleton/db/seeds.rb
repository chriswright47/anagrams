puts "I'm a seeds.rb!"
filename = 'words.txt'

file = File.open(filename).readlines.each do |line|
    Word.create!(name: line.chomp, ordered: line.chomp.downcase.chars.sort.join)
end


