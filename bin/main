#!/usr/bin/env ruby
require_relative '../lib/game'
require_relative '../lib/players'

puts 'Welcome to Tic Tac Toe games'

puts 'Enter Player 1 name: '
one = gets.strip.chomp.capitalize
if one.empty?
  puts 'You can\'t leave this empty. Please, enter you name: '
  one = gets.chomp
elsif one.length < 3
  puts 'Name should be 3 words at least: '
  one = gets.chomp
elsif one.to_i.to_s.eql? one
  puts 'Only text no number:'
  one = gets.chomp
end
puts 'Enter Player 2 name: '
two = gets.strip.chomp.capitalize
if two.empty?
  puts 'You can\'t leave this empty. Please, enter you name: '
  two = gets.chomp
elsif two.length < 3
  puts 'Name should be 3 words at least: '
  two = gets.chomp
elsif two.to_i.to_s.eql? two
  puts 'Only text no number:'
  two = gets.chomp
end

puts "#{one} will play with x and #{two} with 0"

puts 'lets start the game!'

display_board = Game.new

puts "#{one} starts the game !"

while !display_board.won? || !display_board.tie?

  puts display_board.display
  puts "#{one} select an available cell from board"
  number = gets.chomp.to_i

  until display_board.board.include?(number)
    puts 'invalid move. Please enter a number from 1-9'
    number = gets.chomp.to_i
  end

  display_board.count
  display_board.add_board(number)
  break if display_board.won? || display_board.tie?

  puts display_board.display
  puts "#{two} Its your turn !"

  puts 'select an available cell from board'
  number = gets.chomp.to_i

  until display_board.board.include?(number)
    puts 'invalid move. Please enter a number from 1-9'
    number = gets.chomp.to_i
  end
  display_board.count
  display_board.add_board(number)

  break if display_board.won? || display_board.tie?

  puts display_board
end

puts display_board.display

if display_board.won? && display_board.counter.odd?
  puts display_board.display
  puts "#{one} is the winner"
elsif display_board.won? && display_board.counter.even?
  puts "#{two} won the game".to_s
else
  puts 'its a tie'.to_s
end
