# Mainô Blogs
Existem 1000 sistemas de blog, mas não ficamos satisfeitos com nenhum e vamos criar o nosso próprio.

# Antes de tudo
Para agilizar o nosso desafio, será preciso preparar o ambiente de desenvolvimento.

O projeto é executado usando a extensão Remote - Containers, do Visual Studio Code. Ele já tem as versões de Ruby e as bibliotecas de desenvolvimento esperadas. Contudo, é preciso instalar o Docker e garantir que ele pode ser executado pelo seu usuário (ou seja, sem `sudo`).

Se você consegue rodar `docker run hello-world` sem que aconteça nenhum erro, pode pular pro "Como configurar o ambiente de desenvolvimento" sem medo.

Se o comando `docker` não existe, será preciso instalar, seguindo essas instruções: https://docs.docker.com/engine/install/

Após a instalação, para que o Docker possa rodar sem `sudo`, será preciso seguir essas outras instruções e depois fazer logout e login: https://docs.docker.com/engine/install/linux-postinstall/


# Como abrir o ambiente de desenvolvimento
- Abrir com o Visual Studio Code. A extensão Remote - Containers será oferecida, assim como vai pedir para abrir no contêiner.
- Abra um terminal (clicando no + -> ![Screenshot from 2021-04-15 10-00-01](https://user-images.githubusercontent.com/761956/114873108-5d103100-9dd1-11eb-9a0d-a88a618d830e.png)
)
- Agora você pode abrir o servidor executando `rails server`

# É isso!
Em breve, faremos uma sessão de pair programming!
