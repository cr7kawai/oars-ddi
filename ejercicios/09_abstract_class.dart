// Una clase abstracta no se puede instanciar como si misma
// es un molde para crear otro molde
// pueden crear funciones sin implementacion

void main() {
  
  final plantaViento = PlantaViento(energiaInicial: 100);
  final plantaNuclear = PlantaNuclear(cantidadEnergia: 10);
  
  print('Viento: ${ cargarBateria(plantaViento)}');
  print('Nueclear: ${ cargarBateria(plantaNuclear)}');
  
}

double cargarBateria(PlantaEnergia planta){
  if(planta.cantidadEnergia < 10){
    throw Exception('Sin energía suficiente');
  }
  
  return planta.cantidadEnergia - 10;
}

enum TipoPlanta{
  viento,agua, nuclear
}

abstract class PlantaEnergia{
  
  double cantidadEnergia;
  final TipoPlanta tipo; // agua, viento { nuclear, etc...}

  PlantaEnergia({
    required this.cantidadEnergia,
    required this.tipo
  });
  
  void consumirEnergia(double cantidad);
  
}

// extends or implements
// Extends: extender o heredar de una clase
class PlantaViento extends PlantaEnergia{
  
  PlantaViento({required double energiaInicial})
    : super(cantidadEnergia: energiaInicial, tipo: TipoPlanta.viento);
  
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
}


class PlantaNuclear implements PlantaEnergia{
  
  @override
  double cantidadEnergia;
  
  @override
  final TipoPlanta tipo = TipoPlanta.nuclear;
  
  PlantaNuclear({ required double this.cantidadEnergia}); 
  
  @override
  void consumirEnergia(double cantidad){
    cantidadEnergia -= cantidad;
  }
}