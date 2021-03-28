-- 「一度の注文で、最大どれぐらいの注文詳細が紐づく可能性があるのか」調べる必要が生じました。
    -- 過去最も多くのOrderDetailが紐づいたOrderを取得してください。
    -- 何個OrderDetailが紐づいていたでしょうか？

select OrderID, max(orderCount)
from (
    select OrderID, count(1) as orderCount
    from OrderDetails
    group by OrderID
)
