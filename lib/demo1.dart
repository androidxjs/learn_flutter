
import 'dart:math';

String sayHello(var name) => 'hello,$name';

void callHello(Function func, List<String> name) {
  func(name);
}

void sayHelloBoys(List<String> names) {
  names.forEach((element) {
    print(sayHello(element));
  });
}

void main() {
  num x, y;
  var helloFunc = sayHelloBoys;
  var list = <String>[];
  list.add('nnn');
  list.add('aaa');
  list.add('mmm');
  callHello(helloFunc, list);
  // assert('nnn'==list[1]);
  var func = closureFunc();
  func();
  Girl person = Girl();
  // Person.badGirl(name, sex)
  min(1, 1);
}

Function closureFunc() {
  var name = "flutter";
  void displayName() {
    print(name);
  }

  void dis() {
    print("object");
  }

  return dis;
}
class Girl implements Person{

  get name=>"";

  @override
  late String _name;

  @override
  late int _sex;
}
class Person {
  late String _name;
  late int _sex;

  // String name;
  // int sex;
  // Person(this.name,this.sex);
  // String greet();
  Person.badGirl(String name,int sex) {
    this._name = name;
    this._sex = sex;
    print(name+sex.toString());
  }
  Person.goodGirl(String name,int sex) {
    this._name = name;
    this._sex = sex;
    print(name+sex.toString());
  }
  factory Person(int type){
    return type==1?Person.badGirl("name",1):Person.goodGirl("name",2);
  }
}
