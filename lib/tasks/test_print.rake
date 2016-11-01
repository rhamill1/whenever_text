desc 'test print'
task print_stuff: :environment do

    open('test_file.txt', 'a') do |f|
      f.puts "Hello, world. It's me again."
    end
end
