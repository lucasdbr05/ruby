File.open("file.text") do |file|
    file.write("Oscar, Accounting")
end

File.open("files.txt", "r") do |file|
    # puts file.readline()
    # puts file.readline()
    # puts file.readlines()
    puts file.read()
end    

