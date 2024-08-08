puts 'Cleaning the DB....'
Planet.destroy_all

puts "Creating planet(s)..."
planet = Planet.create!(
  name: 'Pluto',
  banner_url: 'https://d23.com/app/uploads/2015/08/1180-x-600-082615_pluto-10-things.jpg'
)
puts "... created #{Planet.count} planets."


puts "Creating Aliens..."
Alien.create!(
  name: 'Yann',
  image_url: 'https://avatars.githubusercontent.com/u/26819547?v=4',
  planet: planet
)

Alien.create!(
  name: 'E.T.',
  image_url: "https://www.cnnbrasil.com.br/wp-content/uploads/sites/12/2022/12/boneco-ET.jpg?w=1200&h=900&crop=1",
  planet: planet
)

Alien.create!(
  name: 'Chewbacca',
  image_url: 'https://imageio.forbes.com/specials-images/dam/imageserve/958761228/960x0.jpg?format=jpg&width=960',
  planet: planet
)

Alien.create!(
  name: 'Marvin the Martian',
  image_url: 'https://i.pinimg.com/736x/5c/bb/87/5cbb87ead6a3d901fb5ce15c87fd20d3--marvin-the-martian-looney-tunes.jpg',
  planet: planet
)

Alien.create!(
  name: 'Kang and Kodos Johnson',
  image_url: 'https://media1.giphy.com/media/3o6MbeBXxFJhC1OUaQ/giphy.gif',
  planet: planet
)

Alien.create!(
  name: 'Martian Leader',
  image_url: 'https://www.looper.com/img/gallery/the-untold-truth-of-mars-attacks/l-intro-1632752169.jpg',
  planet: planet
)

Alien.create!(
  name: 'Predator',
  image_url: 'https://deadline.com/wp-content/uploads/2020/11/Predator-Creature.jpg?w=1000',
  planet: planet
)

Alien.create!(
  name: 'Xenomorph XX121',
  image_url: 'https://media.wired.co.uk/photos/606db4e0c36e357873e6cd26/4:3/w_1704,h_1278,c_limit/alien_1.jpg',
  planet: planet
)

Alien.create!(
  name: 'Zoidberg',
  image_url: 'https://imgflip.com/s/meme/Futurama-Zoidberg.jpg',
  planet: planet
)

Alien.create!(
  name: 'Mark Zuckerberg',
  image_url: 'https://nypost.com/wp-content/uploads/sites/2/2022/11/mark-zuckerberg-57.jpg',
  planet: planet
)

Alien.create!(
  name: 'Alf',
  image_url: 'https://upload.wikimedia.org/wikipedia/en/8/89/GordonShumway.png',
  planet: planet
)

Alien.create!(
  name: 'MAC',
  image_url: 'https://pyxis.nymag.com/v1/imgs/d56/0a4/8bba1a908cb22ab87b10cbf1db2d938a2f-20110316-friendlyaliens-2macandme.2x.rhorizontal.w700.jpg',
  planet: planet
)
puts "... created #{Alien.count} aliens"


puts "Creating alliances..."
10.times do
  Alliance.create!(
    name: Faker::Space.unique.agency
  )
end
puts "... created #{Alliance.count} alliances."
