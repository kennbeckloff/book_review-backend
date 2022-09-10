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



