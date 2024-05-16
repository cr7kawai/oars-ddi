void main (){
  
  final String game = 'Free Fire';
  final int stars = 4;
  final bool isRPG = false;
  final List<String> types = ['Adventure','RPG'];
  final cover = <String>['zelda/front.png','zelda/back.png'];
  
  dynamic data = null;
  data = null;
  data = [1, 2, 3, 4,5];
  data = {1, 2, 3, 4, 5};
  data = () => true;
  data = 1;
  data = "name";
  //data +=2;
  //data = null;
  
  print("""
    $game
    $stars
    $isRPG
    $types
    $cover
    $data
  """);
  
}