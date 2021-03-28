-- JOINの違いに慣れておきましょう！
-- EmployeeId=1の従業員のレコードを、Employeeテーブルから削除してください
-- OrdersとEmployeesをJOINして、注文と担当者を取得してください。その際：
-- （削除された）EmloyeeId=1が担当したOrdersを表示しないクエリを書いてください
-- （削除された）EmloyeeId=1が担当したOrdersを表示する（Employeesに関する情報はNULLで埋まる）クエリを書いてください

-- デリート文
delete from Employees
where EmployeeID = 1

-- （削除された）EmloyeeId=1が担当したOrdersを表示しないクエリを書いてください
select 
O.OrderID
, O.CustomerID
, O.EmployeeID
, O.OrderDate
, O.ShipperID
from Orders O
inner join Employees E
on O.EmployeeID = E.EmployeeID

-- （削除された）EmloyeeId=1が担当したOrdersを表示する（Employeesに関する情報はNULLで埋まる）クエリを書いてください
select 
O.OrderID
, O.CustomerID
, E.EmployeeID
, O.OrderDate
, O.ShipperID
from Orders O
left join Employees E
on  E.EmployeeID = O.EmployeeID