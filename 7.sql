-- 「長くお世話になった運送会社には運送コストを多く払うことになったので、たくさん運送をお願いしている業者を特定して欲しい」と頼まれました
-- 「long_relation」カラム（boolean）をShipperテーブルに追加してください
-- long_relationがtrueになるべきShipperレコードを特定して、long_relationをtrueにしてください
-- long_relationの定義：これまでに70回以上、Orderに関わったShipper（つまり発注を受けて運搬作業を実施した運送会社）

-- カラム追加
ALTER TABLE Shippers ADD long_relation boolean;

-- 更新SQL
update Shippers
set long_relation = 
    case 
    when ShipperID =
        (
        select ShipperID from  Orders
        group by ShipperID
        having count(1) > 70
        ) then TRUE
    else  FALSE
    end
