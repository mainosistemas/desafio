# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


pri = User.create(name: "Priscila Arraes", email: "priscila@maino.com.br", password: "senhadapri123")
blogdapri = pri.create_blog!(slug: "blogdapri", title: "Blog da Pri",
  description: "Este é o blog da Pri. Ela gosta muito de postar.")

(1..1000).each do |n|
  texto = <<~EOF
    Esse é o meu post número #{n}. Eu gosto muito de postar.

    Será que esse blog vai me ajudar a escrever mais? Fico pensando nisso.
  EOF

  blogdapri.posts.create!(title: "Teste #{n}", body: texto, user: pri)
end