puts "Want to play a game?"
gets.chomp

puts "Great! Let's get to it. First, what is your name?"
name = gets.chomp

#score
computer = 0
player = 0

puts "Ok, #{name}. The name of the game is rock, paper, scissors. Just so we are clear, the score is me: #{computer}, and you: #{player}. Are you ready to play?"
gets.chomp

puts "Ok! On 'shoot'... "
sleep (1)

#My rps so I don't have to type this sh%$ again
def rps
puts "Rock..."
sleep(0.5)
puts "Paper..."
sleep(0.5)
puts "Scissors..."
sleep(0.5)
puts "Shoot!"
sleep(0.1)
puts " "
end

#my badass loop function
loop do

#My array of possible moves in RPS
my_array = ["rock", "paper", "scissors"]
computer_answer_1 = my_array.sample

sleep(1)

rps

puts "Alright! What did you get? I'm blind as a bat so you'll have to tell me."
user_answer_1 = gets.chomp.downcase

if computer_answer_1 == "rock" && user_answer_1 == "scissors" 
	sleep(1)
	puts "I had rock and you had scissors."
	sleep(1)
	puts "I win!" 
	computer = computer + 1
elsif computer_answer_1 == "rock" && user_answer_1 == "paper"
	sleep(1)
	puts "I had rock and you had paper." 
	sleep(1)
	puts "You win!" 
	player = player + 1
elsif computer_answer_1 == "rock" && user_answer_1 == "rock"
	sleep(1)
	puts "We both had rock!"
	sleep(1)
	puts "Thats a tie" 
elsif computer_answer_1 == "paper" && user_answer_1 == "scissors"
	sleep(1)
	puts "I had 'paper' and you had 'scissors'." 
	sleep(1)
	puts "You win!" 
	player = player + 1
elsif computer_answer_1 == "paper" && user_answer_1 == "paper"
	sleep(1)
	puts "I had 'paper' and you had 'paper'." 
	sleep(1)
	puts "That's a tie!"
elsif computer_answer_1 == "paper" && user_answer_1 == "rock"
	sleep(1)
	puts "I had 'paper' and you had 'rock'!"
	sleep(1)
	puts "I win!" 
	computer = computer + 1
elsif computer_answer_1 == "scissors" && user_answer_1 == "scissors"
	sleep(1)
	puts "I had 'scissors' and you had 'scissors'!"
	sleep(1)
	puts "That's a tie!"
elsif computer_answer_1 == "scissors" && user_answer_1 == "rock"
	sleep(1)
	puts "I had 'scissors' and you had 'rock'!" 
	sleep(1)
	puts "You win!" 
	player = player + 1
elsif computer_answer_1 == "scissors" && user_answer_1 == "paper"
	sleep(1)
	puts "I had 'scissors' and you had 'paper'." 
	sleep(1)
	puts "I win!"
	computer = computer + 1
end

sleep(2)

puts "Wow! That was fun. The score is me: #{computer}, you: #{player}."

break if computer == 3 || player == 3

end

sleep(1)

puts "That's the game! The final score is me: #{computer}, you: #{player}. Great game. Maybe we will play again sometime soon :)"

