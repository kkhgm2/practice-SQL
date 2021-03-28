-- 「それぞれのEmployeeが最後に担当したOrderと、その日付を取得してほしい」と頼まれました
-- OrderID, EmployeeID, 最も新しいOrderDate
-- 上記のような情報が得られるクエリを描いてください
-- ヒント：何らかのaggregate関数を使う必要があるでしょう

select 
E.EmployeeID
, max(O.OrderDate) as latestOrderDate
from Employees E
inner join Orders O
    on E.EmployeeID = O.EmployeeID
group by O.EmployeeID
