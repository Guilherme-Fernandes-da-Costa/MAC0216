##################################################################
# MAC0216 - Técnicas de Programação I (2024)
# EP2 - Programação em Bash
#
# Nome do(a) aluno(a) 1: Guilherme Fernandes da Costa
# NUSP 1: 14677300
#
##################################################################

#!/bin/bash

#Funções auxiliares
Servico156="http://dados.prefeitura.sp.gov.br/dataset/dados-do-sp156"

# URL0="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/2d020379-fa40-4dc0-8d17-add74b119550/download/arquivofinal2tri2024.csv"
# URL1="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/787c054d-3e77-46c8-8713-e4e26eb2dd55/download/arquivofinal1tri2024.csv"
# URL2="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/33d41278-02de-417a-a99a-5e01d3d87952/download/arquivofinal4tri2023.csv"
# URL3="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/b01a9038-969e-4630-bd3a-4abe188b7259/download/arquivofinal3tri2023.csv"
# URL4="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/7978d3ba-d379-44db-993b-61b9ff406435/download/arquivofinal2tri2023.csv"
# URL5="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/d3043e41-4270-47b5-9922-9e35edd10950/download/arquivofinal1tri2023.csv"
# URL6="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/68408b82-9123-4be0-87cf-bff9096947c6/download/arquivofinal4tri2022.csv"
# URL7="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/69b1460a-a245-47fa-bbb0-51f5e57c2f28/download/arquivofinal3tri2022.csv"
# URL8="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/6de63b14-e804-44cb-9be1-e8b2971504ce/download/arquivofinal2tri2022.csv"
# URL9="http://dados.prefeitura.sp.gov.br/dataset/0aecfa2b-aa3a-40d4-8183-0d4351b7fd0a/resource/6e6b299c-1952-433c-be06-797a2bc14fda/download/arquivofinal1tri2022.csv"

DOWNLOAD_CSV() {
    echo "downloadeia calailo"
    exit 0
}

# table () {
#     echo ${LINHA0}
#     echo ${LINHA1}
#     echo ${LINHA2}
#     echo ${LINHA3}
#     echo ${LINHA4}
#     echo ${LINHA5}
#     echo ${LINHA6}
#     echo ${LINHA0}
#     echo ""
#     echo "Por favor digite a seguir o número da operação que você deseja realizar: "
# }

erro1 () {
    echo ""
    echo "Erro: As formas corretas de usar EP são:"
    echo "(i)  ./ep2_servico156"
    echo "(ii) ./ep2_servico156 <path/file>"
    echo ""
    exit 1   
}

erro2(){
    echo "ERRO: O arquivo $ARG não existe."
    exit 1
}

#selecionar_arquivo
SELECAO_ARQUIVO () {
    #Verifica se o arquivo existe 
    echo "seleciona ai boy"

    # exit 0
}

#adicionar_filtro_coluna
ADICIONAR_FILTRO_COLUNA () {
    echo "adiciona porra!"
    # exit 0
}

#limpar_filtros_colunas
LIMPAR_FILTROS_COLUNAS () {
    echo "limmpaaaaaaaaa filtro filha da puta"
    # exit 0
}

#mostrar_duracao_media_reclamacao
MOSTRAR_DURACAO_MEDIA_RECLAMACAO () {
    echo "Deus tenha misericórdia"
    # exit 0
}
  
#mostrar_ranking_reclamacoes
MOSTRAR_RANKING_RECLAMACOES () {
    echo "meu Jesus"
    # exit 0
}

#mostrar_reclamacoes
MOSTRAR_RECLAMACOES () {
    echo "ai calica"
    # exit 0
}

LOOP=0
TABLE () {
    while [ $LOOP -eq 0 ]; do
        echo "Escolha uma opção de operação:"
        echo "1) selecionar_arquivo         4) mostrar_duracao_media_reclamacao     7) sair"
        echo "2) adicionar_filtro_coluna    5) mostrar_ranking_reclamacoes"
        echo "3) limpar_filtros_colunas     6) mostrar_reclamacoes"

        read RESPOSTA
        declare -i numero=$RESPOSTA #converte o valor para inteiro
        case $numero in 
            1) 
                SELECAO_ARQUIVO
                ;;
            2) 
                ADICIONAR_FILTRO_COLUNA
                ;;
            3) 
                LIMPAR_FILTROS_COLUNAS
                ;;
            4) 
                MOSTRAR_DURACAO_MEDIA_RECLAMACAO
                ;;
            5) 
                MOSTRAR_RANKING_RECLAMACOES
                ;;
            6) 
                MOSTRAR_RECLAMACOES
                ;;
            7) 
                LOOP=1
                ;;
            # *) 
            #     echo "wtf bro? are you an idiot?"
            #     ;;
        esac
    done
}

#main

#introdução
echo "+++++++++++++++++++++++++++++++++++++++"
echo "Este programa mostra estatísticas do"
echo "Serviço 156 da Prefeitura de São Paulo"
echo "+++++++++++++++++++++++++++++++++++++++"

if [[ $# -eq 0 ]]; then #soh ./ep2_servico156
{
    #verifica se o caminho (i) já foi usado, senão ele não pode ser usado
    if [ -e "urls_arquivos_csv.txt" ]; then
        TABLE   #mostra o table se true
    #mostra erro se false
    else
        echo "ERRO: Não há dados baixados."
        echo "Para baixar os dados antes de gerar as estatísticas, use:"
        echo "  ./ep2_servico156.sh <nome do arquivo com URLs de dados do Serviço 156>"
    
    fi
}   
elif [ $# -eq 1 ]; then #   ./ep2_servico156 <path/file>
{
    declare -i loop2=0
    ARG=$1
    echo $loop2
    while [ $loop2 -le 0 ]; do
        if [ $ARG=~"/" ]; then
            caminho=$[ $ARG | cut -d'/' -f1 ]
            echo $caminho
            cd ./"$caminho" #Deus queira que isso funcione
        else
            loop2=1
        fi
    done
    #verifica se há arquivo
    if [ ! -f $ARG ]; then
        erro2
    else
        DOWNLOAD_CSV    
    fi
    TABLE
}       
else 
{
    erro1
}
fi

#Fim
echo "Fim do programa"
echo "+++++++++++++++++++++++++++++++++++++++"

exit 0