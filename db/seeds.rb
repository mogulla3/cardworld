
10.times do |n|
  user = User.create(
    name: "user-#{n}",
    age: Random.rand(100),
    sex: ['male', 'female'].sample,
    premium: [true, false].sample
  )
  puts "user was created: #{user}"

  deck = Deck.create(
    name: "deck-#{n}",
    description: "d" * Random.rand(100),
    image_url: "https://cardworld.com/image/image-#{n}.png",
    favorite: [true, false].sample,
    user_id: user.id
  )
  puts "deck was created: #{deck}"

  tag = Tag.create(name: "tag-#{n}")
  puts "tag was created: #{tag}"
end

tag_count = Tag.count
Deck.all.each do |deck|
  10.times do |n|
    card = Card.create(front: "front-#{n}", back: "back-#{n}", status: [1,2,3].sample, deck_id: deck.id)
    puts "card was created: #{card}"
  end

  Tag.take(Random.rand(tag_count)).each do |tag|
    deck_tag = DeckTag.create(deck_id: deck.id, tag_id: tag.id)
    puts "deck_tag was created: #{deck_tag}"
  end
end


