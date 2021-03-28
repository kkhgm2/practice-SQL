-- 「一番お世話になっている運送会社を教えて欲しい」と頼まれました。
-- 過去最も多くのOrderが紐づいたShipperを特定してみてください

select ShipperID ,count(*) as count
from Orders as O 
group by ShipperID
order by count desc