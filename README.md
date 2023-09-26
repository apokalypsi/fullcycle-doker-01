# fullcycle-doker-01

Para construir e executar a imagem Docker com o Dockerfile fornecido localmente, siga estas etapas:

1. Coloque seu código Go (o arquivo codeedu.go) e o Dockerfile na mesma pasta.
2. Abra o terminal e navegue até o diretório onde estão os arquivos.
3. Use o comando docker build para criar a imagem. Certifique-se de substituir <nome-da-imagem> pelo nome que você deseja dar à sua imagem e <caminho-para-o-dockerfile> pelo caminho para o Dockerfile. Por exemplo:
 
       -  docker build -t <nome-da-imagem> -f <caminho-para-o-dockerfile> .

Por exemplo:

       -  docker build -t codeeducation-image -f Dockerfile .

4. Após a construção da imagem, você pode executá-la com o comando docker run:
   
       - docker run codeeducation-image
