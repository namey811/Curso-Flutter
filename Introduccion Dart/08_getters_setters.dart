void main() {
  final mySquare = Square(side: 10);

  mySquare.side = 5;

// LLamando al metodo GET area para realizar el calculo
  print('área: ${mySquare.area}');

// LLamando a la funcion CalcularArea() para realizar el calculo
  print('área: ${mySquare.calculateArea()}');
}

class Square {
  //_side propiedades privadas que solo son visibles dentro de la clase

  double _side = 0; // side * side

// Haciendo uso de los condicionales IF y ELSE

  Square({required double side}) {
    if (side >= 0) {
      _side = side;
    } else {
      print('El valor debe ser mayor o igual que CERO');
    }
  }

//Creando METODO GET
  double get area {
    return _side * _side;
  }

  set side(double value) {
    print('setting new value $value');
    if (value < 0) throw 'Value must be >=0';

    _side = value;
  }

  double calculateArea() {
    return _side * _side;
  }
}
