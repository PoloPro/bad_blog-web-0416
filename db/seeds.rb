10.times do
  post = Post.create!(title: "About a #{Faker::StarWars.specie}", content: Faker::StarWars.quote)
  50.times do 
    author = Author.create!(name: Faker::StarWars.character)
    post.comments.create!(author: author,  content: Faker::Hipster.paragraph)
  end
end
