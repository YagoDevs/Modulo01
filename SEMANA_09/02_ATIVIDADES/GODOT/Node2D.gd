extends Node2D
var lista= []
#esta função quando precionada salva o numero que foi digitado no LineEdit e adiciona a lista, mostrando no label.
func _on_Button_pressed():
	lista.append(float($LineEdit.text))
	print(lista)
	$ColorRect/Label.text= str(lista)

#Este botão só mostra algo quando a lista for maior que 10 numeros, enquanto não for ela não ordena e não mostra no label
func _on_Button2_pressed():
	var n= len(lista)
	if len(lista) < 10:
		pass
	else:	
		lista.sort()
		print(lista)
		$ColorRect2/Label2.text= str(lista)
