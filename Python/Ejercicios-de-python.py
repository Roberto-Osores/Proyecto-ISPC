"""
7) Crear una tupla en Python con el nombre de �Historial3� la cual contenga los
siguientes valores:

          9530, 4120, 4580, 1500, 890,7516,426

Que representa montos de atenci�n en pesos por diferentes servicios/consultas de
la mascota �Lennon�. Calcular el promedio de gasto en pesos por atenci�n de �Lennon�
mostr�ndolo en pantalla. Si el promedio es mayor a 4500 indicar con un mensaje
�Se ha excedido del gasto promedio para su mascota�.
"""
historial3 = (9530, 4120, 4580, 1500, 890, 7516, 426);
gastoTotal = 0;
for i in historial3:
    gastoTotal += i;
promedioDeGastos = gastoTotal / len(historial3);
print('El promedio de atenci�n de Lennon es: ', round(promedioDeGastos, 3));
if promedioDeGastos > 4500:
    print('Se ha excedido del gasto promedio para su mascota');
    
"""
8) Crear una tupla en Python con el nombre de �Historial4� la cual contenga los
siguientes valores:

          7510, 7960, 76180, 800, 4100

Que representa montos de atenci�n en pesos por diferentes servicios/consultas de
la mascota �Olivia�. Cree una funci�n para determinar el valor m�nimo de atenci�n
gastada en �Olivia�  mostr�ndolo en pantalla.
"""
historial4 = (7510, 7960, 76180, 800, 4100);
def valorMinimoDeAtencion():
    menorValor = historial4[0];
    for a in historial4:
        if menorValor > a:
            menorValor = a;
    return menorValor;
print('El valor m�nimo gastado en la atenci�n de Olivia es:',valorMinimoDeAtencion());