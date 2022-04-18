# 第 3 章 关系数据库语言 SQL

## 3.3 SQL 数据操纵功能

### 3.3.1 SQL 数据查询

#### 1. 单表查询

##### 1. 选择表中若干列

```SQL
SELECT C#
FROM   Course
```

##### 2. 查询全部列

```SQL
SELECT *
FROM   Student
```

##### 3. 查询经过计算的值

```SQL
SELECT Sname, 2004 - Age
FROM   Student
```

##### 4. 选择表中的若干元组

如果需要消除重复使用 `DISTINCT`，否则默认为 `ALL`

```SQL
SELECT ALL Teacher
FROM Course
```

```SQL
SELECT DISTINCT Teacher
FROM Course
```

##### 5. 查询满足条件的元组

| 查询条件 |                      谓词                       |
| :------: | :---------------------------------------------: |
|   比较   | `=` `>` `<` `>=` `<=` `!=` `<>` `!>` `!<` `NOT` |
| 确定范围 |         `BETWEEN AND` `NOT BETWEEN AND`         |
| 确定集合 |                  `IN` `NOT IN`                  |
| 字符匹配 |                `LIKE` `NOT LIKE`                |
|   空值   |             `IS NULL` `IS NOT NULL`             |
| 多重条件 |                `AND` `OR` `NOT`                 |

```SQL
SELECT *
FROM   Student
WHERE  ( Age >= 18) AND (Age <= 20)
```

```SQL
SELECT *
FROM   Student
WHERE  Age BETWEEN 18 AND 20
```

```SQL
SELECT S#
FROM   SC
WHERE  C# IN ('CS-01', 'CS-02')
```

```SQL
SELECT S#
FROM   SC
WHERE  C# = 'CS-01' OR C# = 'CS-02'
```

```SQL
SELECT DISTINCT Teacher
FROM   Course
WHERE  C# LIKE 'CS%'
```

- 计数 `COUNT ([DISTINCT|ALL] <col_name>)`

- 求和 `SUM ([DISTINCT|ALL] <col_name>)`

- 求平均 `AVG ([DISTINCT|ALL] <col_name>)`

- 求最值 `MIN|MAX ([DISTINCT|ALL] <col_name>)`

#### 2. 连接查询

#### 3. 嵌套查询

#### 4. 集合查询
