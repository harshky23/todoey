class Type{

  Type({this.name='',this.isCheck=false});
  final String name;
  bool isCheck;

  void swap(){
    isCheck=!isCheck;
  }

}