#!/usr/bin/env ruby
require 'active_support/all'
today_start = Date.today.beginning_of_day
today_end = Date.today.end_of_day
days = 14
days = Integer(ARGV[0]) if ARGV[0]
days.times do |day|
  day_start = today_start.strftime('%FT%T%:z')
  day_end = today_end.strftime('%FT%T%:z')
  puts "[#{today_start.strftime('%F')}]"
  command = "git log --date=local --author \"Cody\" --since \"#{day_start}\" --until \"#{day_end}\" --pretty=oneline --abbrev-commit"
  cmd_output = `#{command}`
  split_output = cmd_output.split("\n")
  split_output.each do |output|
    next if output.include?("Merge branch")
    puts output.gsub(/^......./, '-')
  end
  puts ""
  today_start = today_start - 1.day
  today_end = today_end - 1.day
end