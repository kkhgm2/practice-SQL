-- 「常連顧客を特定して欲しい」と頼まれました
    -- 1996年に3回以上注文した（Ordersが3つ以上紐づいている）CustomerのIDと、注文回数を取得してみてください
    -- 最もよく注文してくれたのは、どのCustomerでしょうか？


select CustomerID ,count(*) as count
from Orders as O 
where O.OrderDate between '1996-01-01' and '1996-12-31'
group by CustomerID
having count(1) > 2

-- select * 
-- from Customers C
-- inner join (
--     select CustomerID ,count(*) as count
--     from Orders as O 
--     where O.OrderDate between '1996-01-01' and '1996-12-31'
--     group by CustomerID
--     having count(*) = (
--         select max(count)
--         from(
--             select CustomerID ,count(*) as count
--             from Orders as O 
--             where O.OrderDate between '1996-01-01' and '1996-12-31'
--             group by CustomerID
--             )
--         ) 
--     ) as orderCountMaxCustomers
-- on C.CustomerID = orderCountMaxCustomers.CustomerID