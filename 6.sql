-- 「社内の福利厚生の規定が変わったので、年齢が一定以下の社員には、それとわかるようにフラグを立てて欲しい」と頼まれました
-- Employeeテーブルに「Junior（若手）」カラム（boolean）を追加して、若手に分類されるEmployeeレコードの場合はtrueにしてください
-- Juniorの定義：誕生日が1960年より後のEmployeeの場合は値をTRUEにする更新クエリを作成してください
カラム追加可能？　case 文を使用？

-- Customers
--     CustomerID	
--     CustomerName	
--     ContactName	
--     Address	
--     City	
--     PostalCode	
--     Country

-- Categories
--     CategoryID	
--     CategoryName	
--     Description

-- Employees
--     EmployeeID	
--     LastName	
--     FirstName	
--     BirthDate	
--     Photo	
--     Notes

-- OrderDetails
--     OrderDetailID	
--     OrderID	
--     ProductID	
--     Quantity


-- Orders
--     OrderID	
--     CustomerID	
--     EmployeeID	
--     OrderDate	
--     ShipperID

-- Products
--     ProductID	
--     ProductName	
--     SupplierID	
--     CategoryID	
--     Unit	
--     Price

-- Shippers
--     ShipperID	
--     ShipperName	
--     Phone

-- Suppliers
--     SupplierID	
--     SupplierName	
--     ContactName	
--     Address	
--     City	
--     PostalCode	
--     Country	
--     Phone