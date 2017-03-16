# Programa 1 - Benchmark da Alegria
grupo 9 - Gangue da Alegria

 Este benchmark utiliza o programa de edição de imagem GraphicsMagick, aliado ao serviço de monitoramento Perf, para analisar diversas métricas do computador em que for executado. 

 Serão medidos o tempo de processamento multi-core, o numero de ciclos e a performance do cache, incluindo cache-hits e misses, além de page faults. Esse programa é eficaz pois processamento de imagem é exponencialmente mais dispendioso com o tamanho da imagem utilizada, além de ser um programa que faz bom uso dos recursos computacionais disponíveis, como processadores de multiplos núcleos ou placas gráficas.

  GrapgicsMagick pode ser encontrado no site "graphicsmagick.org", ou baixado diretamente pelo link  https://sourceforge.net/projects/graphicsmagick/files/latest/download?source=files . O serviço Perf pode ser baixado diretamente pelo comando "sudo apt-get install linux-tools-common linux-tools-generic".

  Para instalar e executar o programa basta clonar a pasta "projeto 1" e executar o script "benchmarkScript.sh". Esse script vaik executar o comando "./configure", que instala e configura o GraphicsMagick, e vai executar 6 vezes o serviço de alteração de contraste em uma imagem de teste de resolução 16k, com o monitoramento do Perf ativado. O processo deve demorar cerca de 2-5 minutos.

 O serviço de monitoramento do Perf deve retornar todas as medidas de performance necessárias ao final da execução. Valores absolutos e ponderados de cada métrica estarão disponíveis, sendo apresentados em forma de média das 6 execuções, incluindo a margem de erro.

Teste base (controle): Computador do IC302 - i5 4590 3.3 Ghz 8Gb Mem
Performance counter stats for 'gm mogrify -contrast -contrast -contrast -contrast -contrast result.jpg' (6 runs):

       72180.247939      task-clock:u (msec)       #    3.563 CPUs utilized            ( +-  3.45% )
                  0      context-switches:u        #    0.000 K/sec                  
                  0      cpu-migrations:u          #    0.000 K/sec                  
            356,847      page-faults:u             #    0.005 M/sec                    ( +-  0.00% )
    251,115,894,786      cycles:u                  #    3.479 GHz                      ( +-  3.45% )
    183,761,447,902      instructions:u            #    0.73  insn per cycle           ( +-  5.10% )
     32,545,993,728      branches:u                #  450.899 M/sec                    ( +-  6.83% )
         98,100,120      branch-misses:u           #    0.30% of all branches          ( +-  6.74% )
     33,300,655,477      L1-dcache-loads:u         #  461.354 M/sec                    ( +-  2.12% )
        177,318,784      L1-dcache-load-misses:u   #    0.53% of all L1-dcache hits    ( +-  0.28% )
         10,729,703      LLC-loads:u               #    0.149 M/sec                    ( +-  3.86% )
          5,286,464      LLC-load-misses:u         #   49.27% of all LL-cache hits     ( +-  6.06% )

       20.257407735 seconds time elapsed                                          ( +-  3.60% )

