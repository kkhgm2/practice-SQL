
-- 「重要な市場を把握したい」と頼まれました。売上が高い順番にCountryを並べてみましょう
    -- ヒント：注文を行ったCustomerのCountryを集計すると良いでしょう
    -- 売上の定義：
    -- Orderごとの売上の定義は「OrderDetailsのQuantity（個数）」x「ProductsのPrice（単価）」
    -- （補足：事前テストでも出題した問題です！）

select 
round(sum(OD.Quantity * P.Price)) as salseAmount 
, C.Country
from  Orders O
inner join OrderDetails OD
    on O.OrderID = OD.OrderID
inner join Products P
    on OD.ProductID = P.ProductID
inner join Customers C
    on O.CustomerID = C.CustomerID
group by C.Country
order by salseAmount desc
