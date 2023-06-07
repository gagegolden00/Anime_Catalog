# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Catalog.destroy_all
some_seeds_to_plant = [
  
  { title: "TSUKIMICHI Moonlit Fantasy", genre: "genre", episodes: 1 },
  { title: "Black Clover", genre: "genre", episodes: 1 },
  { title: "The World's Finest Assassin gets Reincarnated as an Aristocrat", genre: "genre", episodes: 1 },
  { title: "Demon Slayer", genre: "genre", episodes: 1 },
  { title: "Dance in the Vampire Bund", genre: "genre", episodes: 1 },
  { title: "High School DxD", genre: "genre", episodes: 1 },
  { title: "The Sacred Blacksmith", genre: "genre", episodes: 1 },
  { title: "Nobless Awakening", genre: "genre", episodes: 1 },
  { title: "Tower of God", genre: "genre", episodes: 1 },
  { title: "The Rising of the Shield Hero", genre: "genre", episodes: 1 },
  { title: "Goblin Slayer", genre: "genre", episodes: 1 },
  { title: "Stiens Gate", genre: "genre", episodes: 1 },
  { title: "The Dawn of the Witch", genre: "genre", episodes: 1 },
  { title: "Heaven Official's Blessing", genre: "genre", episodes: 1 },
  { title: "The Promised Neverland", genre: "genre", episodes: 1 },
  { title: "Jujutsu Kaisen", genre: "genre", episodes: 1 },
  { title: "The Misfit of Demon King Academy", genre: "genre", episodes: 1 },
  { title: "Parasyte the Maxim", genre: "genre", episodes: 1 },
  { title: "Tokyo Ghoul", genre: "genre", episodes: 1 },
  { title: "Attack on Titan", genre: "genre", episodes: 1 },
  { title: "Deathnote", genre: "genre", episodes: 1 },
  { title: "Norogami", genre: "genre", episodes: 1 },
  { title: "The Ancient Magus' Bride", genre: "genre", episodes: 1 },
  { title: "The Testament of Sister New Devil", genre: "genre", episodes: 1 },
  { title: "Hundred", genre: "genre", episodes: 1 },
  { title: "Seven Mortal Sins", genre: "genre", episodes: 1 },
  { title: "Dragonaut -THE RESONANCE-", genre: "genre", episodes: 1 },
  { title: "Basilisk", genre: "genre", episodes: 1 },
  { title: "KamiKatsu: Working for God in a Godless World", genre: "genre", episodes: 1 },
  { title: "How Not to Summon a Demon Lord", genre: "genre", episodes: 1 },
  { title: "GOBLIN SLAYER", genre: "genre", episodes: 1 },
  { title: "Sword Art Online", genre: "genre", episodes: 1 },
  { title: "VINLAND SAGA", genre: "genre", episodes: 1 },
  { title: "Dragon Ball", genre: "genre", episodes: 1 }
  
]

Catalog.create(some_seeds_to_plant)