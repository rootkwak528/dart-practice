# 1_0 Hello word
세미콜론을 (`;`) 꼭 붙여야 함

안 붙이는 경우가 있어서 formatter 나 IDE 가 자동으로 붙여주지 않기 때문<br><br>

# 1_1 var
`var` 변수 선언하면 타입 추정해서 이후로는 해당 타입으로 강제됨

`var` 대신 `String` 등 타입 선언을 해줘도 됨
언제 var 쓰나 ?
- class 멤버변수는 타입 선언
- 메서드나 함수 내 지역변수는 var 선언
- var<br><br>

# 1_2 dynamic type
사용이 권장되지 않음

`var var1` 혹은 `dynamic var1` 로 선언 가능

다이나믹 변수는 타입이 계속 바뀔 수 있음

flutter 나 json 을 사용하다 보면 타입을 알 수 없을 때가 있는데, 그때 유용함<br><br>

# 1_3 null safety
개발자가 `null` 을 참조할 수 없게 함

컴파일 하기 전에 NPE 발생을 막아주는 게 null safety

nullable 변수는 `String?` 과 같이 물음표를 (`?`) 타입 뒤에 붙여줌
- 그리고 그 변수를 String 메서드로 호출하거나 하면 컴파일 에러가 생김
- `null` 이 아닌 경우에 한정해서 (`var1 != null` 같은 조건문으로 제한하거나, `var1?.isEmpty` 같이 변수명 뒤에 물음표를 붙여서) `String` 메서드를 호출해야 에러가 사라짐<br><br>

# 1_4 final
`final var1` 과 같이 사용 가능<br><br>

# 1_5 late
`late var1` 같이 선언 가능

변수 선언과 데이터 할당을 다른 시점에 할 수 있게 함

컴파일러가 인식해서 컴파일에러를 만들어주기 때문에 개발자 실수를 줄여줌
- 문서 설명 `The late modifier lets you defer initialization, but still prohibits you from treating it like a nullable variable.`

flutter 에서 api 사용 시 많이 사용하게 됨<br><br>

# 1_6 const
`final` 과 비슷하게 변경 불가

compile-time constant 를 의미함
- 컴파일 시점에 알고 있는 값을 의미함
- 사용자 입력이나, api 로 받아오는 값이라면 `final` 을 쓰도록<br><br>


**Fin.**
