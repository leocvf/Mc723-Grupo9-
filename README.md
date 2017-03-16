# Programa 1 - Benchmark da Alegria
grupo 9 - Gangue da Alegria

## Este benchmark utiliza o programa de edição de imagem GraphicsMagick, aliado ao serviço de monitoramento Perf, para analisar diversas métricas do computador em que for executado. 

##Serão medidos o tempo de processamento multi-core, o numero de ciclos e a performance do cache, incluindo cache-hits e misses, além de page faults. Esse programa é eficaz pois processamento de imagem é exponencialmente mais dispendioso com o tamanho da imagem utilizada, além de ser um programa que faz bom uso dos recursos computacionais disponíveis, como processadores de multiplos núcleos ou placas gráficas.

## GrapgicsMagick pode ser encontrado no site "graphicsmagick.org", ou baixado diretamente pelo link  https://sourceforge.net/projects/graphicsmagick/files/latest/download?source=files . O serviço Perf pode ser baixado diretamente pelo comando "sudo apt-get install linux-tools-common linux-tools-generic".

## Para instalar e executar o programa basta clonar a pasta "projeto 1" e executar o script "benchmarkScript.sh". Esse script vaik executar o comando "./configure", que instala e configura o GraphicsMagick, e vai executar 6 vezes o serviço de alteração de contraste em uma imagem de teste de resolução 16k, com o monitoramento do Perf ativado. O processo deve demorar cerca de 2-5 minutos.

##O serviço de monitoramento do Perf deve retornar todas as medidas de performance necessárias ao final da execução. Valores absolutos e ponderados de cada métrica estarão disponíveis, sendo apresentados em forma de média das 6 execuções, incluindo a margem de erro.


