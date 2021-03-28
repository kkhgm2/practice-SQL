-- NULLの扱いに慣れておきましょう！
-- Customerテーブルで任意の１レコードのCustomerNameをNULLにしてください
-- CustomerNameが存在するユーザを取得するクエリを作成してください
-- CustomerNameが存在しない（NULLの）ユーザを取得するクエリを変えてください
-- もしかすると、CustomerNameが存在しないユーザーを取得するクエリを、このように書いた方がいるかもしれません
-- SELECT * FROM Customers WHERE CustomerName = NULL;
-- しかし残念ながら、これでは期待した結果は得られません。なぜでしょうか？

-- Customerテーブルで任意の１レコードのCustomerNameをNULL
update Customers
set CustomerName = null
where CustomerID = 1

-- CustomerNameが存在するユーザを取得するクエリ
select * from Customers
where CustomerName is not null

select * from Customers
where CustomerName <>  ''

-- CustomerNameが存在しない（NULLの）ユーザを取得するクエリ
select * from Customers
where CustomerName is null

-- しかし残念ながら、これでは期待した結果は得られません。なぜでしょうか？
null は値でも何でもないので
比較述語（=, <> など）が適用不可だから

