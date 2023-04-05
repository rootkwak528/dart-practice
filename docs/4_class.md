# 4_0 class
클래스 내에서는 `this` 를 최소로 사용하자<br><br>

# 4_1 constructor
생성자로 멤버 변수 할당할 거라면, `late` 를 붙여주자
하지만 더 좋은 방법이 있다
```
class Player {
  late final String name;
  late int age;
  
  Player(this.name, this.age);  <- 생성자
}
```
<br>

# 4_2 named constructor parameter
멤버변수가 많아지면 위의 positional param 은 좋지 않음, 그럴땐 함수에서 처럼 named param 을 사용할 수 있음
```
class Player {
  late final String name;
  late int age;
  
  Player({required this.name, required this.age});  <- named param 생성자
}
```

`required` 를 달아주거나, default value 를 할당해 null safety 하게 만들자<br><br>

# 4_3 named constructor
```
class Player {
  late final String name, team;  <- 같은 속성의 멤버변수는 콤마로 (,) 구분해서 한번에 선언 가능
  late int age;
  
  Player({required this.name, required this.age});
  
  Player.bluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue';  <- named constructor with named param
  
  Player.redPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red';  <- named constructor with positional param
}
```
<br>

# 4_5 cascade notation
```
var root = Player(name: 'root', age: 30, team: 'red');
root.name = 'hogeun';
root.age = 32;
root.team = 'blue';
root.sayHello();
```
위의 코드는 아래 코드와 같다.
```
var root = Player(name: 'root', age: 30, team: 'red')
  ..name = 'hogeun'
  ..age = 32
  ..team = 'blue'
  ..sayHello();
```
<br>

# 4_6 enum
`enum 이름 { 속성1, 속성2, ... }` 로 선언
```
enum Team { red, blue }

class Player {
  late final String name;
  late int age;
  Team team;  <- String 이 아니라 Team 이 되었다.

  Player.bluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = Team.blue;  <- 사용할 때는 이렇게
```
<br>

# 4_7 abstract class
flutter 에서 그다지 많이 사용하지 않음

`abstract class` 로 선언

`extends` 로 구현<br><br>

# 4_8 inheritance
flutter 에서 그다지 많이 사용하지 않음22

`super` 로 부모 클래스 호출

```
class Human {
  final String name;
  
  Human(this.name);

  void sayHello() {
    print('hi i am ${name}');
  }
}

class Player extends Human {
  final Team team;

  Player({
    required this.team, 
    required String name
  }) : super(name);  <- 부모 생성자 호출

  @Override  <- 오버라이드
  void sayHello() {
    super.sayHello();
    print('and I play for ${team}');
  }
}
```
<br>

# 4_9 mixin
***flutter 에서 정말 많이 유용하게 사용함***

속성이나 메서드를 여러 클래스에 가져다 쓸 때 사용

생성자가 있으면 안 됨

`with` 로 사용

```
class QuickRunner {
  void runQuick() {
    print('ruuuuuuun!');
  }
}

class Strong {
  final double power = 10000.99;
}

class Player with QuickRunner, Strong {
  ...
}
```
<br>

**Fin.**
