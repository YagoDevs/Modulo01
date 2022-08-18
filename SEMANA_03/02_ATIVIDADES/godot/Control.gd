extends Control

var arrayAnimals = ["Macaco", "Leão", "Jumento"]
var arrayVazio = []

#exercicio1
func _on_Button_pressed():
	$ColorRect/Button/Label.text = String(arrayAnimals)
	
#Exercicio2	

func _on_Button2_pressed():
	arrayVazio.push_back($ColorRect2/Button2/LineEdit.text)
	$ColorRect2/Button2/Label.text = String(arrayVazio)

#Exercicio3

func _on_Button3_pressed():
	$ColorRect3/Button3/Label.text = "testando palavras"

#Exercicio4



func _on_Button4_pressed():
	var text = $ColorRect4/Button4/LineEdit.text
	$ColorRect4/Button4/Label.text = text
	
