// Streams
// Son flujos de información que pueden estar emitiendo valores periódicamente,
// puede ser una vez o nunca.
// Son como el flujo de agua (el flujo es el stream) puede cerrarse o abrirse

void main(){

  emitNumbers().listen( (value) {
    print('emit: $value');
  });
  
}

Stream<int> emitNumbers() async*{
  final valuesToEmit = [1, 2, 3, 4, 5];
  
  for (int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 3));
    
    // ceder un valor
    yield i;
  }
}