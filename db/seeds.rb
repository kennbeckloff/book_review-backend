puts "🌱 Seeding spices..."

# Seed your database here

books = ["wr3lCEKeuXAC", "KfBlcGzyvf8C", "7L2TtgEACAAJ", "tCMsEAAAQBAJ", "o-xztgAACAAJ", "Qx1pLwEACAAJ", "5V_6DwAAQBAJ", "-v8HDAAAQBAJ", "9CFGvgAACAAJ"]

books.each do |book|
    response = RestClient.get "https://www.googleapis.com/books/v1/volumes/#{book}"

    book_hash = JSON.parse(response)

    Book.create(
        title: book_hash["volumeInfo"]["title"],
        authors: book_hash["volumeInfo"]["authors"][0],
        publisher: book_hash["volumeInfo"]["publisher"],
        publishedDate: book_hash["volumeInfo"]["publishedDate"],
        description: book_hash["volumeInfo"]["description"],
        pageCount: book_hash["volumeInfo"]["pageCount"],
        averageRating: book_hash["volumeInfo"]["averageRating"],
        ratingsCount: book_hash["volumeInfo"]["ratingsCount"],
        imageLinks: book_hash["volumeInfo"]["imageLinks"]["thumbnail"],
        language: book_hash["volumeInfo"]["language"]
    )
end
puts "✅ Done seeding!"

puts "🌱 Seeding users..."
User.create(username: "kali", email: "kali@gmail.com", password: "1234567")
User.create(username: "man", email: "man@gmail.com", password: "1234567")
User.create(username: "don", email: "don@gmail.com", password: "1234567")
User.create(username: "sqll", email: "sqll@gmail.com", password: "1234567")
User.create(username: "act", email: "act@gmail.com", password: "1234567")
User.create(username: "ala", email: "ala@gmail.com", password: "1234567")
puts "✅ Done seeding!"

puts "🌱 Seeding authors..."
Author.create(name: "Napoleon Hill", book_id:1)
Author.create(name: "David Bach", book_id:2)
Author.create(name: "Kirankumar Nayak", book_id:3)
Author.create(name: "Saket Shah", book_id:4)
Author.create(name: "Helen Rhee", book_id:5)
Author.create(name: "Napoleon Hill", book_id:6)
Author.create(name: "Julie Ann Cairns", book_id:7)
Author.create(name: "Wallace D. Wattles", book_id:8)
Author.create(name: "Napoleon Hill", book_id:9)
puts "✅ Done seeding!"

puts "🌱 Seeding reviews..."
Review.create(reviews:"great teachings i love the book", book_id:1, user_id:1)
Review.create(reviews:"Fantastic words of encouragement", book_id:2, user_id:2)
Review.create(reviews:"good workk", book_id:3, user_id:3)
Review.create(reviews:"i love reading your books", book_id:4, user_id:4)
Review.create(reviews:"Really this is amazing", book_id:5, user_id:5)
Review.create(reviews:"funny and interesting", book_id:6, user_id:6)
Review.create(reviews:"Perfect to the point", book_id:7, user_id:1)
Review.create(reviews:"Sensational boook", book_id:8, user_id:3)
Review.create(reviews:"Good teachings", book_id:9, user_id:5)
puts "✅ Done seeding!"



