desc 'test print'
  task print_stuff: :environment do
    # puts "Turned off alarm. Would have liked 5 more minutes, though."
    # File.write('test_file.txt','heres some text')

    open('test_file.txt', 'a') do |f|
      f.puts "Hello, world. It's me again."
    end
end
