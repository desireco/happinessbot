#!/usr/bin/env ruby

require 'twitter'

total_followers_count = 0
total_statuses_count = 0

puts "Name\t\tFollowers\tStatuses Start Date"
7.upto(12) do |index|
  name = "happiness2_u_#{index}"
  u = Twitter.user(name)
  followers_count = u.followers_count
  statuses_count = u.statuses_count
  puts "#{name}\t#{followers_count}\t\t#{statuses_count}\t#{u.created_at.to_date}"
  total_followers_count += followers_count
  total_statuses_count += statuses_count
end

puts "totals:\t\t#{total_followers_count}\t\t#{total_statuses_count}"
