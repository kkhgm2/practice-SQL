-- 国ごとの売上を年毎に（1月1日~12月31日の間隔で）集計してください
-- ヒント：Web SQLで「年だけ」を取得するためにはstrftimeを使うと良いでしょう！

select 
round(sum(OD.Quantity * P.Price)) as salseAmount 
, strftime('%Y', OrderDate) as orderYear
, C.Country
from  Orders O
inner join OrderDetails OD
    on O.OrderID = OD.OrderID
inner join Products P
    on OD.ProductID = P.ProductID
inner join Customers C
    on O.CustomerID = C.CustomerID
group by C.Country, orderYear
order by C.Country asc, orderYear asc