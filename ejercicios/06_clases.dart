void main(){
  final Hero ironMan = new Hero(name: 'ironMan', power: 'Otro');
  final Hero bellako = new Hero(name: 'bellako');
  
  print(ironMan);
  print(ironMan.name);
  print(ironMan.power);
  
  print(bellako);
  print(bellako.name);
  print(bellako.power);
}

class Hero{
  String name;
  String power;
  
  Hero({
    required this.name,
    this.power = 'Sin Poder'
  });
  //Hero(this.name, this.power);
  
  /*
   Hero(String pName, String pPower)
    :name = pName,
     power = pPower;
  */
    
  @override
  String toString(){
    return '$name - $power';
  }
}