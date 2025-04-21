# SORT BY NAME: ruby quizz1.rb n
# SORT BY MATRICULA: ruby quizz1.rb m
filename = "engsoft.txt"
lines = File.readlines(filename)
matriculas = []

i = 0
while i < lines.size
  line = lines[i].chomp
  if line.match(/^\s*(\d{2}\/\d{7})\s+(.+)/)
    matricula = $1
    nome = $2.strip

    j = i + 1
    while j < lines.size && lines[j].match(/^\s+(a-zA-Z\u00C0-\u00FF )/)
      nome += ' ' + $1.strip
      j += 1
    end
    i = j - 1  
    matriculas << [matricula, nome]
  end
  i += 1
end

def print_sorted(entries)
  entries.sort_by { |entry| yield(entry) }.each do |entry|
    puts "#{entry[0]}\t#{entry[1]}"
  end
end
sort_by = ARGV[0] || "n"

case sort_by.downcase
when "n"
  print_sorted(matriculas) { |entry| entry[1].downcase }
else
  print_sorted(matriculas) { |entry| entry[0] }
end