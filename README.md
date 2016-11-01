# whenever

Whenever is a Ruby gem that provides a clear syntax for writing and deploying cron jobs

### What's a cron job?
Ever have a manual task you do for work daily, weekly, monthly, hourly? Automate the task and schedule it with cron!

<li> Email
<li> Reports
<li> Backend ETL
<li> Change the appearance of a webpage at regular intervals

## Setup


```sh
$ gem install whenever
```

Or with Bundler in your Gemfile.

```ruby
gem 'whenever', :require => false
```

### Getting started

```sh
$ cd /apps/my-great-project
$ wheneverize .
```

This will create an initial `config/schedule.rb` file for you.

### schedule.rb

##### syntax 1
```
set :environment, "development"

every 1.minutes do
  rake 'print_stuff'
end
```
<br><br>
#### syntax 2
```
every :sunday, :at => '12pm' do # Use any day of the week or :weekend, :weekday
  runner "Task.do_something_great"
end
```
<br>
to update the cron schedule run:
```
$ whenever -i
```
<br>
### lib/tasks
```
desc 'test print'
task print_stuff: :environment do

    open('test_file.txt', 'a') do |f|
      f.puts "Hello, world. It's me again."
    end
end
```


<br>
to check the jobs and their schedule run:
```
whenever
```
<br>
check what bash code is being executed and at what interval
```
$ crontab -l
```



### Manually Test Your Job
```
$ rake print_stuff
```


## Cron Syntax

```
* * * * * *
| | | | | |
| | | | | +-- Year              (range: 1900-3000)
| | | | +---- Day of the Week   (range: 1-7, 1 standing for Monday)
| | | +------ Month of the Year (range: 1-12)
| | +-------- Day of the Month  (range: 1-31)
| +---------- Hour              (range: 0-23, 1 in our example)
+------------ Minute            (range: 0-59, 10 in our example)
```

## Resources

<li> [Github and Docs](https://github.com/javan/whenever)


## Take Aways

<li> Does not work well with Heroku
<li> Can not execute at seconds interval
<li> If testing write to a file. Can't console log to terminal or server.
<li> Potentially better options:  
<li> Specify environment (default if PROD, job file or command line)
