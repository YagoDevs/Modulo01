extends Node2D

var teste = false
var valor = 0
var numero = 0
var lista = []
var nome: String



func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($Button/LineEdit2.text)
	nome = str($Button/LineEdit.text)
	lista=[]
	
	


func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	if len(lista) > 0:
		lista = []
	lista.append(numero)
	var numeroCopia = numero
	for i in range(10):
		numeroCopia+=1
		lista.append(numeroCopia)
		$Button2/Label.text = str(lista)
	#em vez de alterar o numero somando 10, coloquei para salvar em uma copia
		


func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	var cont=0
	var i=0
	while(len(lista) > i):
		if(lista[i]%2==1):
			cont+=1
		i+=1
	print(cont)
	if(cont!=0):
		nome = nome+"baldo"
		$Button3/Label2.text = nome
