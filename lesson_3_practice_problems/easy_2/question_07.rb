# question_07.rb

# How can we add multiple items to our array? (Dino and Hoppy)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.push("Dino", "Hoppy")

flintstones.push("Dino").push("Hoppy") 

flintstones.concat(%w(Dino Hoppy)) 