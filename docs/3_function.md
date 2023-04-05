# 3_0 function
한 줄 짜리 `return` 함수는 `=>` 사용 가능 (fat arrow syntax)<br><br>

# 3_1 named parameter
순서대로 넣는 일반적인 매개변수는 positional parameter
- 순서를 기억하기 어렵다는 단점이 있음

`void function({num var1, num var2})` 이런 식으로 매개변수를 중괄호로 {} 감싸주면, `function(var1 : 1, var2 : 2)` 이런식으로 named parameter 사용 가능함
- 다만 null 값이 넘어올 수 있기 때문에 null safety 한 dart 는 두가지 해결책을 제시함
  1. 매개변수 선언 시 `required num var1` 와 같이 `required` 를 추가하면 필수 변수가 됨
  2. `void function({num var1 = 1, num var2})` 와 같이 default value 선언도 가능함<br><br>

# 3_3 optional positional parameter
positional parameter 는 기본적으로 모든 변수가 필수

그러나 `void function(num var1, [num? var2 = 1])` 과 같이 default value 를 선언해 optional 하게 만들 수 있음<br><br>

# 3_4 QQ operator
삼항연산자
- `조건문 ? 참값 : 거짓값`

QQ 연산자
- `값1 ?? 값2`
- 값1 이 `null` 이면 값2

QQ 할당 연산자
- `변수 ??= 값`
- 변수가 `null` 이라면 변수에 값 할당<br><br>

# 3_5 typedef
typedef 변수명 = List<int> 과 같이 data type 을 변수로 만들 때 사용<br><br>


**Fin.**
