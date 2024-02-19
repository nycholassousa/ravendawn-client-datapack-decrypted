# Ravendawn Data Client Decrypted/Decompiled

## ATENÇÃO
- Não me responsabilizo se você fizer algo e for banido
- Faça backup do data.bin


## O que é este repositório?
Estou apenas descriptografando e decompilando o client do jogo Ravendawn, onde ele é baseado no otcv8, que você pode encontrar [neste link](https://github.com/OTCv8/otcv8-dev?tab=readme-ov-file)


## Qual o intuito?
Apenas acompanhar os updates do client do ravendawn para estudo, ver o que mudou, coisas do tipo


## Como você descriptografou e decompilou?
Usei [este repositório](https://github.com/Jaerin/ravendawn-decrypt), no qual precisei do python 3.12 para executar com sucesso


## Como uso esses arquivos?
Atualmente, o client do ravendawn não analisa se o data.bin está descriptografado/decompilado, assim como o projeto base dele, então eu apenas fiz os passos da seção anterior e joguei na pasta do jogo, localizado em "%appdata%/Ravendawn/ravendawn"

É necessário usar os arquivos eu eu ignorei no gitignore, devido o tamanho, então faça você mesmo a etapa acima.

Além disso, o init.lua verifica o checksum dos arquivos, então após essa alteração (ou qualquer outra que você faça), é necessário editar o init.lua, removendo a url que está no trecho com "updater" neste arquivo


## O que é possível fazer com o client dessa forma?
Pra ser sincero, olhei pouco ainda sobre isso, mas pelo que olhei, é possível:
- Abrir o market em qualquer local do mapa (adicionando ele ao menu embaixo, inclusive)
- Burlar o minigame de colheita (minério, madeira, fazenda) para dar sucesso, independente da posição do marcador (aperte F em qualquer momento que é sucesso)
- Adicionar o cavebot do otcv8 (esse aqui requer muito trabalho)
- Adicionar um termino ao client para "debug" no lua (usando o print do lua)
- Verificar status do client (uso de ram, cpu, rede, etc)

Existem outras coisas que ainda não olhei/tentei, mas creio eu que seja possível:
- Zoom
- Abrir rangers company em qualquer local, assim selecionando o que quer caçar

O que vi que era impossível, pois os dados usados são server side (ou podem até ser possíveis e eu que não olhei com calma):
- Burlar minigame pescaria (dados do peixe, durabilidade vem server side com checagens frequentes)
- Aumentar capacidade do inventário/banco (você consegue visualmente, mas o item não é transferido)


## Observações
Caso o time do Ravendawn não goste da existência desse repositório, pode me contatar via discord, deixo ele privado ou removo sem nenhum problema


## Contato
Discord: .nycho
