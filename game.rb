require 'pry'

# Note: we only need `require_relative` if we end up calling a class by name in our file's logic. As such, you may have to add more `require_relative` statements accordingly.
require_relative "lib/deck"
require_relative 'lib/hand'
require_relative 'lib/card'

puts "GAME IS STARTING"

deck = Deck.new

puts "\nThere are #{deck.cards.length} in the deck"
puts "\n"

hand1 = Hand.new(deck.deal(4))
hand2 = Hand.new(deck.deal(4))

puts "Player 1 was dealt #{hand1.cards_array[0].rank}#{hand1.cards_array[0].suit}, #{hand1.cards_array[1].rank}#{hand1.cards_array[1].suit}, #{hand1.cards_array[2].rank}#{hand1.cards_array[2].suit}, #{hand1.cards_array[3].rank}#{hand1.cards_array[3].suit}"

puts "\n"
puts "Player 2 was dealt #{hand2.cards_array[0].rank}#{hand2.cards_array[0].suit}, #{hand2.cards_array[1].rank}#{hand2.cards_array[1].suit}, #{hand2.cards_array[2].rank}#{hand2.cards_array[2].suit}, #{hand2.cards_array[3].rank}#{hand2.cards_array[3].suit}"

puts "\nPlayer 1's hand value is #{hand1.value}"

puts "\nPlayer 2's hand value is #{hand2.value}"

if hand1.value > hand2.value
  puts "\nPlayer 1 wins!"
elsif hand2.value > hand1.value
  puts "\nPlayer 2 wins!"
else
  puts "\nTIE!"
end
