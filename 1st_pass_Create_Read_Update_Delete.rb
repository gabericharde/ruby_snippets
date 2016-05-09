movies = {
    Donnie_Darko: 9,
    Inception: 8,
    Arthur: 10
}

puts "What would you like to do? (Add, Update, Display, or Delete)"
choice = gets.chomp

case choice
when "add"
    puts "What movie would you like to add?"
    title = gets.chomp
    puts "How would you rate that film on a scale from 0-10?"
    rating = gets.chomp
    if movies[title.to_sym].nil? == false
        puts "That movie already exists!"
    else
    movies[title.to_sym] = rating.to_i
    puts "Thanks for that! #{title} added to the database with #{rating} stars!"
    end

when "update"
    puts "What movie would you like to update?"
    title = gets.chomp
    if movies[title.to_sym].nil? == true
        puts "That movie is not in the database yet!"
    else
        puts "What is your new rating (0-10) for this film?"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
    
when "display"
    movies.each do |movie, rating|
    puts "#{movie}: #{rating}"
    end
when "delete"
    puts "What movie would you like to delete?"
    title = gets.chomp
    if movies[title.to_sym].nil? == false
        movies.delete(title)
    else
        puts "That movie is not in the database!"
    end
else
    puts "Error!"
end