# Desafio Mainô
Existem 1000 sistemas de blog, mas não ficamos satisfeitos com nenhum e vamos criar o nosso próprio.

# Como configurar o ambiente de desenvolvimento
- Abrir com o Visual Studio Code. A extensão Remote - Containers será oferecida, assim como vai pedir para abrir no contêiner.
- Abra um terminal (CTRL+`)
- bundle install
- yarn install
- rails db:setup
- rails server

# Problemas conhecidos
- Alguma coisa está impedindo de criar um blog
- Está sendo possível editar os posts de qualquer pessoa
- O blog da Priscila (pessoa com muitas postagens) está muito lento

# Roadmap
- Implementar uma funcionalidade de comentários, com a opção de bloquear comentários no post.
- Permitir o uso de Markdown nos posts