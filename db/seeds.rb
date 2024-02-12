# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idependent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
cats = [
  {
    name: 'Oscar',
    age: 5,
    about: 'Swipe right if youre feline fine and ready to mingle! Im a whisker-twitching aficionado of belly rubs and cardboard boxes, seeking a purr-fect partner for lazy afternoons and midnight zoomies.',
    image: 'https://images.unsplash.com/photo-1529778873920-4da4926a72c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1036&q=80'
  },
  {
    name: 'Garfield',
    age: 6,
    about: 'Cat-ch me if you can! Im a sophisticated tabby with a penchant for gourmet treats and adventurous window sill exploration, searching for a companion to share catnip dreams and cozy cuddles.',
    image: 'https://images.unsplash.com/photo-1573865526739-10659fec78a5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1015&q=80'
  },
  {
    name: 'Tom',
    age: 9,
    about: 'Lets paws and reflect on the possibilities! Im a playful calico with a love for string toys and sunbeams, on the hunt for a fellow feline aficionado to enjoy catnaps and spontaneous feather wand sessions.',
    image: 'https://images.unsplash.com/photo-1492370284958-c20b15c692d2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1049&q=80'
  },
  {
    name: 'Whisper',
    age: 3,
    about: 'Looking for someone to share secrets with? I\'m Whisper, a Siamese beauty with captivating blue eyes and a penchant for elegance. Whether it\'s a quiet evening curled up by the fire or a playful romp through the garden, I\'m ready for it all!',
    image: 'https://cdn12.picryl.com/photo/2016/12/31/siamese-cat-cat-blue-eye-animals-e86c7d-1024.jpg'
  },
  {
    name: 'Shadow',
    age: 4,
    about: 'In need of a mysterious companion? Look no further than Shadow. With my sleek black fur and piercing eyes, I\'ll add an air of intrigue to your life. Let\'s explore the unknown together!',
    image: 'https://live.staticflickr.com/2656/5827332576_553738e65c_b.jpg'
  },
  {
    name: 'Mittens',
    age: 2,
    about: 'Got a lap that needs warming? I\'m Mittens, the fluffy Ragdoll with a heart as soft as my fur. Whether it\'s a snuggle session on the couch or a game of chase around the house, I\'m up for anything as long as you\'re by my side!',
    image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/Mittens_the_cat_of_wellington.jpg/640px-Mittens_the_cat_of_wellington.jpg'
  }
]

cats.each do |each_cat|
  Cat.create each_cat
  puts "creating cat #{each_cat}"
end