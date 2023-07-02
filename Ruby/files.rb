File.open("files.txt", "r") do |file|
    # puts file.readline()
    # puts file.readline()
    # puts file.readlines()
    puts file.read()
end

File.open("files.txt", "a") do |file|
    file.write("\nSou tricolor de coração")
end
