void main() {
  //solo hay q poner los primeros 9 digitos
  String cedula = "175048398";

  int suma = 0;

  for (int i = 0; i < 9; i++) {
    int numero = int.parse(cedula[i]);

    if (i % 2 == 0) {
      numero = numero * 2;

      if (numero > 9) {
        numero = numero - 9;
      }
    }

    suma = suma + numero;
  }

  int digito = (10 - (suma % 10)) % 10;

  print("Cedula que ingreso: $cedula");
  print("El digito verificador es: $digito");
}