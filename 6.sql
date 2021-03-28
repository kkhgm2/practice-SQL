-- 「社内の福利厚生の規定が変わったので、年齢が一定以下の社員には、それとわかるようにフラグを立てて欲しい」と頼まれました
-- Employeeテーブルに「Junior（若手）」カラム（boolean）を追加して、若手に分類されるEmployeeレコードの場合はtrueにしてください
-- Juniorの定義：誕生日が1960年より後のEmployeeの場合は値をTRUEにする更新クエリを作成してください

-- カラム追加
ALTER TABLE Employees ADD Junior boolean;

-- 更新SQL
update Employees
set Junior = case when BirthDate > '1960-01-01' then TRUE
	else FALSE
end 
