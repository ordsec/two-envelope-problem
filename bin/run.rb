#!/usr/bin/env ruby

require_relative '../config/environment.rb'

system('clear') || system('cls')

puts "Welcome to the Two-Envelope Paradox!\n"

print "Enter the amount of iterations: "
iterations = gets.strip.to_i
puts

Picker.new(iterations).compare_all
