
class Quote{
  late String text;
  late String author;
  Quote({required String text,required String author}){
    this.text=text;
    this.author=author;
  }
  //Quote({this.text,this.author})    // we are using named parameter now we have to define which value we are writing in the object
}



//Quote my_quote =Quote(text: 'this is the quote ', author:'this is the author');