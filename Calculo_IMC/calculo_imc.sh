#!/bin/bash
#
#Criando a Função:
#
function calc_imc(){
	read -p "Informe o seu peso em kilos: " peso
	read -p "Informe a sua altura em centimetros: " altura
	altura_quadrado=$(($altura * $altura))
	imc=$((($altura_quadrado / $peso) / 10))
	cowsay "O Resultado do seu IMC é: $imc"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
}

#Apresentando o Programa ao usuário...
#
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                  +"
echo "+     ********* CALCULADORA IMC **************     +"
echo "+                                                  +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo
cowsay "OI, tudo bem? Qual o seu nome?"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
sleep 4
clear
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                  +"
echo "+     ********* CALCULADORA IMC **************     +"
echo "+                                                  +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo
echo
read -p "Nome: " nome
sleep 3
clear
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                  +"
echo "+     ********* CALCULADORA IMC **************     +"
echo "+                                                  +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo
cowsay "Oi $nome! Gostei do seu nome, é lindo!"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
sleep 4
clear
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                  +"
echo "+     ********* CALCULADORA IMC **************     +"
echo "+                                                  +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo
cowsay "Então $nome, vamos calcular o seu IMC?"
echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
sleep 4
clear
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+                                                  +"
echo "+     ********* CALCULADORA IMC **************     +"
echo "+                                                  +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo
echo
echo
read -p "Resposta: " resposta
sleep 4
clear
if [[ $resposta == "sim" || $resposta == "SIM" ]]
then
	cowsay "Perfeito! Vamos continuar..."
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 4
	clear
	cowsay "Responda o questionário com ATENÇÃO!"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 4
	clear
	#
	#chamando função:
	#
	echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo "+                                                  +"
	echo "+     ********* CALCULADORA IMC **************     +"
	echo "+                                                  +"
	echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo
	echo
	calc_imc
	sleep 8
	clear
	echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo "+                                                  +"
	echo "+     ********* CALCULADORA IMC **************     +"
	echo "+                                                  +"
	echo "++++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo
	echo
	cowsay "Olha $nome, vou te explicar o Resultado do seu IMC..."
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 5
	clear
elif [[ $resposta == "não" || $resposta == "nao" ]]
then
	cowsay "Que pena! gostaria muito de interagir com você!"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 3
	clear
	cowsay "Tá bom, vamos parar por aqui!"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 3
	clear
	cowsay "Até uma próxima $nome!"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 3
	clear
else
	cowsay "$nome, acho que você não respondeu corretamente!"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 2
	clear
	cowsay "Quer tentar responder novamente?"
	echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
	sleep 3
	clear
	echo "++++++++++++++++++++++++++++++++++++++++++++++++++"
	echo
	read -p "Resposta: " resp
	sleep 2
	clear
	if [[ $resp == "sim" || $resp == "SIM" ]]
	then
		cowsay "Legal! Vamos tentar novamente!"
		echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		sleep 4
		clear
	else
		cowsay "Tá bom, vamos parar por aqui!"
		echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		sleep 3
		clear
		cowsay "Até uma próxima $nome!"
		echo "^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^"
		sleep 3
		clear
	fi	
fi