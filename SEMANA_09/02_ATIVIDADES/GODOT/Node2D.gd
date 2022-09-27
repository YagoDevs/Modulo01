extends Node2D
var lista= []

#Esta função é uma função criada do zero para ordenar uma lista.
func ordenacao(array):
	for p in range(0, len(array)):
		var n_elemento= array[p]
		while p > 0 and (array[p - 1] > n_elemento):
			array[p] = array[p - 1]
			p -= 1
			array[p] = n_elemento
	return array
			
#esta função quando precionada salva o numero que foi digitado no LineEdit e adiciona a lista, mostrando no label.
func _on_Button_pressed():
	lista.append(float($LineEdit.text))
	print(lista)
	$ColorRect/Label.text= str(lista)

#Este botão só mostra algo quando a lista for maior que 10 numeros, enquanto não for ela não ordena e não mostra no label
func _on_Button2_pressed():
	if len(lista) < 10:
		pass
	else:	
		lista = ordenacao(lista)
		print(lista)
		$ColorRect2/Label2.text= str(lista)
