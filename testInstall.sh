#!/bin/bash

echo ==========================
echo Atualizando repositórios..
echo ==========================
    if ! apt-get update
    then
echo “Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list”
    exit 1
    fi

echo =====================
echo Verificando o Wifi...
echo =====================
    if ! iwconfig
    then 
echo "Erro Ao verificar o Wifi"
    exit 1
    fi

echo ==========================
echo Atualizando o sitema...
echo ==========================
    if ! apt-get upgrade
    then
echo “Não foi possível atualizar o Sistema. Verifique seu arquivo /etc/apt/sources.list”
    exit 1
    fi

