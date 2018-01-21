SELECT * FROM Area
SELECT * FROM Branch
SELECT * FROM Choice
SELECT * FROM Item
SELECT * FROM Member
SELECT * FROM "Order"
SELECT * FROM OrderItem
SELECT * FROM OrderStatus
SELECT * FROM PizzaCrust
SELECT * FROM PizzaPrice
SELECT * FROM PizzaSize
SELECT * FROM PromoLine
SELECT * FROM PromoLineItem
SELECT * FROM Promotion 

--Q1
--Order Report (i)
SELECT O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email, SUM([Total Cost Non Pizza Item])AS 'Total Amount'
FROM "Order" O, OrderStatus OS ,
(
SELECT OrderNo, SUM(isNULL(nonPizzaPrice,0)* OrderQty) AS 'Total Cost Non Pizza Item'
FROM OrderItem OI , Item I 
WHERE    "Type" NOT IN('Pizza') AND OI.ItemNo = I.ItemNo
GROUP BY OrderNo
UNION 
SELECT OrderNo, SUM(OrderQty *isNUll(PP.PizzaPrice,0)) AS 'Total Cost Pizza Item' 
FROM OrderItem OI, Item I, PizzaPrice PP
WHERE "Type" In ('Pizza') AND OI.ItemNo = I.ItemNo AND I.ItemNo = PP.ItemNo AND OI.CrustNo= PP.CrustNo AND OI.PizzaSize = PP.PizzaSize
GROUP BY OrderNo
) AS Price 
WHERE  O.OrdStatusCd = OS.OrdStatusCd
AND    O.OrderNo = Price.OrderNo 
AND    O.OrderNo = 'OR000001'
GROUP BY O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email
ORDER BY O.OrderNo

--Order Report (ii)
SELECT O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email, SUM([Total Cost Non Pizza Item])AS 'Total Amount'
FROM "Order" O, OrderStatus OS ,
(
SELECT OrderNo, SUM(isNULL(nonPizzaPrice,0)* OrderQty) AS 'Total Cost Non Pizza Item'
FROM OrderItem OI , Item I 
WHERE    "Type" NOT IN('Pizza') AND OI.ItemNo = I.ItemNo
GROUP BY OrderNo
UNION 
SELECT OrderNo, SUM(OrderQty *isNUll(PP.PizzaPrice,0)) AS 'Total Cost Pizza Item' 
FROM OrderItem OI, Item I, PizzaPrice PP
WHERE "Type" In ('Pizza') AND OI.ItemNo = I.ItemNo AND I.ItemNo = PP.ItemNo AND OI.CrustNo= PP.CrustNo AND OI.PizzaSize = PP.PizzaSize
GROUP BY OrderNo
) AS Price 
WHERE  O.OrdStatusCd = OS.OrdStatusCd
AND    O.OrderNo = Price.OrderNo 
AND    O.OrderNo = 'OR000002'
GROUP BY O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email
ORDER BY O.OrderNo


--Ordered Line Details (i)
SELECT DISTINCT OI.OrderNo, I.ItemTitle, OI.CrustNo, OI.OrderQty, OI.PizzaSize, (OI.OrderQty*PP.PizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE PP.ItemNo=OI.ItemNo AND OI.CrustNo=PP.CrustNo AND OI.PizzaSize=PP.PizzaSize AND I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NOT NULL OR OI.PizzaSize IS NOT NULL) AND OrderNo='OR000001'
UNION
SELECT DISTINCT OI.OrderNo, I.ItemTitle, ISNULL(OI.CrustNo,'NA'), OI.OrderQty,COALESCE(OI.PizzaSize,'NA'), (OI.OrderQty*I.nonPizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NULL OR OI.PizzaSize IS NULL) AND OrderNo='OR000001'

--Ordered Line Details (ii)
SELECT DISTINCT OI.OrderNo, I.ItemTitle, OI.CrustNo, OI.OrderQty, OI.PizzaSize, (OI.OrderQty*PP.PizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE PP.ItemNo=OI.ItemNo AND OI.CrustNo=PP.CrustNo AND OI.PizzaSize=PP.PizzaSize AND I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NOT NULL OR OI.PizzaSize IS NOT NULL) AND OrderNo='OR000002'
UNION
SELECT DISTINCT OI.OrderNo, I.ItemTitle, ISNULL(OI.CrustNo,'NA'), OI.OrderQty,COALESCE(OI.PizzaSize,'NA'), (OI.OrderQty*I.nonPizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NULL OR OI.PizzaSize IS NULL) AND OrderNo='OR000002'


/*
SELECT * FROM OrderItem
SELECT * FROM PizzaPrice
SELECT OI.OrderNo,I.ItemTitle,PC.CrustDesc,OI.OrderQty,OI.PizzaSize,ISNULL(PP.PizzaPrice,0)* OrderQty ,PS.PizzaSize FROM OrderItem OI,Item I,PizzaCrust PC, PizzaSize PS,PizzaPrice PP WHERE  OI.ItemNo=I.ItemNo AND OI.CrustNo=PC.CrustNo AND OI.PizzaSize=PS.PizzaSize AND PP.CrustNo=OI.CrustNo AND PP.PizzaSize=OI.PizzaSize ORDER BY OrderNo--GROUP BY OrderNo,I.ItemTitle,CrustDesc,OrderQty,OI.PizzaSize,PS.PizzaSize


SELECT OrderNo, SUM(isNULL(nonPizzaPrice,0)* OrderQty) AS 'Total Cost Non Pizza Item'
FROM OrderItem OI , Item I 
WHERE    "Type" NOT IN('Pizza') AND OI.ItemNo = I.ItemNo
GROUP BY OrderNo
UNION 
SELECT OrderNo, SUM(OrderQty *isNUll(PP.PizzaPrice,0)) AS 'Total Cost Pizza Item' 
FROM OrderItem OI, Item I, PizzaPrice PP
WHERE "Type" In ('Pizza') AND OI.ItemNo = I.ItemNo AND I.ItemNo = PP.ItemNo AND OI.CrustNo= PP.CrustNo AND OI.PizzaSize = PP.PizzaSize
GROUP BY OrderNo
*/

 


--Q2
--Order Report (i)
SELECT DISTINCT O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email,SUM( P.PromoPrice*C.Promo_order_Qt) AS 'Total Amount'
FROM "Order" O, OrderStatus OS, Choice C, Promotion P 
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND OS.OrdStatusCd=O.OrdStatusCd AND O.OrderNo='OR000001'
GROUP BY O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email

--Order Report (ii)
SELECT DISTINCT O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email,SUM( P.PromoPrice*C.Promo_order_Qt) AS 'Total Amount'
FROM "Order" O, OrderStatus OS, Choice C, Promotion P 
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND OS.OrdStatusCd=O.OrdStatusCd AND O.OrderNo='OR000002'
GROUP BY O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email

--Order Line Details (i)
SELECT P.PromoNo, P.PromoTitle, C.Promo_order_Qt, P.PromoPrice,I.ItemNo, I.ItemTitle,P.PromoPrice*C.Promo_order_Qt AS 'Promotion SubTotal'
FROM "Order" O, Choice C, Promotion P ,Item I
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND I.ItemNo=C.ItemNo AND  O.OrderNo='OR000001'

--Order Line Details (ii)
SELECT P.PromoNo, P.PromoTitle, C.Promo_order_Qt, P.PromoPrice,I.ItemNo, I.ItemTitle,P.PromoPrice*C.Promo_order_Qt AS 'Promotion SubTotal'
FROM "Order" O, Choice C, Promotion P ,Item I
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND I.ItemNo=C.ItemNo AND  O.OrderNo='OR000002'


--Q3
--Order Report (i)
SELECT e.OrderNo,e.OrderDate,e.OrderTime,e.DeliveryAddress,e.DeliveryPostalCd,e.DeliveryTel,e.StatusDesc,E.Email, SUM([Total Amount]) AS 'Total Amount' FROM (
SELECT O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email, SUM([Total Cost Non Pizza Item])AS 'Total Amount'
FROM "Order" O, OrderStatus OS ,
(
SELECT OrderNo, SUM(isNULL(nonPizzaPrice,0)* OrderQty) AS 'Total Cost Non Pizza Item'
FROM OrderItem OI , Item I 
WHERE    "Type" NOT IN('Pizza') AND OI.ItemNo = I.ItemNo
GROUP BY OrderNo
UNION 
SELECT OrderNo, SUM(OrderQty *isNUll(PP.PizzaPrice,0)) AS 'Total Cost Pizza Item' 
FROM OrderItem OI, Item I, PizzaPrice PP
WHERE "Type" In ('Pizza') AND OI.ItemNo = I.ItemNo AND I.ItemNo = PP.ItemNo AND OI.CrustNo= PP.CrustNo AND OI.PizzaSize = PP.PizzaSize
GROUP BY OrderNo
) AS Price 
WHERE  O.OrdStatusCd = OS.OrdStatusCd
AND    O.OrderNo = Price.OrderNo 
AND    O.OrderNo = 'OR000001'
GROUP BY O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email
UNION
SELECT DISTINCT O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email, P.PromoPrice*C.Promo_order_Qt AS 'Total Amount'
FROM "Order" O, OrderStatus OS, Choice C, Promotion P 
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND OS.OrdStatusCd=O.OrdStatusCd AND O.OrderNo='OR000001'
) AS e
GROUP BY  e.OrderNo,e.OrderDate,e.OrderTime,e.DeliveryAddress,e.DeliveryPostalCd,e.DeliveryTel,e.StatusDesc,E.Email

--Order Report (ii)
SELECT e.OrderNo,e.OrderDate,e.OrderTime,e.DeliveryAddress,e.DeliveryPostalCd,e.DeliveryTel,e.StatusDesc,E.Email, SUM([Total Amount]) AS 'Total Amount' FROM (
SELECT O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email, SUM([Total Cost Non Pizza Item])AS 'Total Amount'
FROM "Order" O, OrderStatus OS ,
(
SELECT OrderNo, SUM(isNULL(nonPizzaPrice,0)* OrderQty) AS 'Total Cost Non Pizza Item'
FROM OrderItem OI , Item I 
WHERE    "Type" NOT IN('Pizza') AND OI.ItemNo = I.ItemNo
GROUP BY OrderNo
UNION 
SELECT OrderNo, SUM(OrderQty *isNUll(PP.PizzaPrice,0)) AS 'Total Cost Pizza Item' 
FROM OrderItem OI, Item I, PizzaPrice PP
WHERE "Type" In ('Pizza') AND OI.ItemNo = I.ItemNo AND I.ItemNo = PP.ItemNo AND OI.CrustNo= PP.CrustNo AND OI.PizzaSize = PP.PizzaSize
GROUP BY OrderNo
) AS Price 
WHERE  O.OrdStatusCd = OS.OrdStatusCd
AND    O.OrderNo = Price.OrderNo 
AND    O.OrderNo = 'OR000002'
GROUP BY O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email
UNION
SELECT DISTINCT O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email, P.PromoPrice*C.Promo_order_Qt AS 'Total Amount'
FROM "Order" O, OrderStatus OS, Choice C, Promotion P 
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND OS.OrdStatusCd=O.OrdStatusCd AND O.OrderNo='OR000002'
) AS e
GROUP BY  e.OrderNo,e.OrderDate,e.OrderTime,e.DeliveryAddress,e.DeliveryPostalCd,e.DeliveryTel,e.StatusDesc,E.Email


--Order Line Details 

--Ordered Line Details (Non-promotion)(i)
SELECT DISTINCT OI.OrderNo, I.ItemTitle, OI.CrustNo, OI.OrderQty, OI.PizzaSize, (OI.OrderQty*PP.PizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE PP.ItemNo=OI.ItemNo AND OI.CrustNo=PP.CrustNo AND OI.PizzaSize=PP.PizzaSize AND I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NOT NULL OR OI.PizzaSize IS NOT NULL) AND OrderNo='OR000001'
UNION
SELECT DISTINCT OI.OrderNo, I.ItemTitle, ISNULL(OI.CrustNo,'NA'), OI.OrderQty,COALESCE(OI.PizzaSize,'NA'), (OI.OrderQty*I.nonPizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NULL OR OI.PizzaSize IS NULL) AND OrderNo='OR000001'

--Ordered Line Details (Non-promotion)(ii)
SELECT DISTINCT OI.OrderNo, I.ItemTitle, OI.CrustNo, OI.OrderQty, OI.PizzaSize, (OI.OrderQty*PP.PizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE PP.ItemNo=OI.ItemNo AND OI.CrustNo=PP.CrustNo AND OI.PizzaSize=PP.PizzaSize AND I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NOT NULL OR OI.PizzaSize IS NOT NULL) AND OrderNo='OR000002'
UNION
SELECT DISTINCT OI.OrderNo, I.ItemTitle, ISNULL(OI.CrustNo,'NA'), OI.OrderQty,COALESCE(OI.PizzaSize,'NA'), (OI.OrderQty*I.nonPizzaPrice) AS 'Price'
FROM OrderItem OI, PizzaPrice PP, Item I
WHERE I.ItemNo=OI.ItemNo AND (OI.CrustNo IS NULL OR OI.PizzaSize IS NULL) AND OrderNo='OR000002'

--Order Line Details (Promotion)(i)
SELECT P.PromoNo, P.PromoTitle, C.Promo_order_Qt, P.PromoPrice,I.ItemNo, I.ItemTitle,P.PromoPrice*C.Promo_order_Qt AS 'Promotion SubTotal'
FROM "Order" O, Choice C, Promotion P ,Item I
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND I.ItemNo=C.ItemNo AND  O.OrderNo='OR000001'

--Order Line Details (Promotion)(ii)
SELECT P.PromoNo, P.PromoTitle, C.Promo_order_Qt, P.PromoPrice,I.ItemNo, I.ItemTitle,P.PromoPrice*C.Promo_order_Qt AS 'Promotion SubTotal'
FROM "Order" O, Choice C, Promotion P ,Item I
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND I.ItemNo=C.ItemNo AND  O.OrderNo='OR000002'


--Self designed query

--average price spent on total average of Promotion and Ala Carte prices
--in each branch, to see whether promotion or ala carte is more popular

SELECT DISTINCT B.BranchName AS 'Branch Name',A.Area_Desc AS 'Area Description',AVG(NPT.[Total Amount]) AS 'Average Promotion Price',AVG(PT.[Total Amount]) AS 'Average Ala Carte Price'
FROM Branch B, Area A, "Order" O,nonpromototalprice NPT,promototalprice PT
WHERE B.Area_Code=A.Area_Code AND B.BranchNo=O.BranchNo AND NPT.OrderNo=O.OrderNo AND PT.OrderNo=O.OrderNo
GROUP BY B.BranchName,A.Area_Desc
ORDER BY B.BranchName ASC



CREATE VIEW nonpromototalprice AS (
--Order Report (i) nonpromoprice
SELECT O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email, SUM([Total Cost Non Pizza Item])AS 'Total Amount'
FROM "Order" O, OrderStatus OS ,
(
SELECT OrderNo, SUM(isNULL(nonPizzaPrice,0)* OrderQty) AS 'Total Cost Non Pizza Item'
FROM OrderItem OI , Item I 
WHERE    "Type" NOT IN('Pizza') AND OI.ItemNo = I.ItemNo
GROUP BY OrderNo
UNION 
SELECT OrderNo, SUM(OrderQty *isNUll(PP.PizzaPrice,0)) AS 'Total Cost Pizza Item' 
FROM OrderItem OI, Item I, PizzaPrice PP
WHERE "Type" In ('Pizza') AND OI.ItemNo = I.ItemNo AND I.ItemNo = PP.ItemNo AND OI.CrustNo= PP.CrustNo AND OI.PizzaSize = PP.PizzaSize
GROUP BY OrderNo
) AS Price 
WHERE  O.OrdStatusCd = OS.OrdStatusCd
AND    O.OrderNo = Price.OrderNo 
GROUP BY O.OrderNo, OrderDate, OrderTime , DeliveryAddress, DeliveryPostalCd, DeliveryTel , StatusDesc , Email
)


CREATE VIEW promototalprice AS (
--Order Report (i) --promo
SELECT DISTINCT O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email,SUM( P.PromoPrice*C.Promo_order_Qt) AS 'Total Amount'
FROM "Order" O, OrderStatus OS, Choice C, Promotion P 
WHERE O.OrderNo=C.OrderNo AND C.PromoNo=P.PromoNo AND OS.OrdStatusCd=O.OrdStatusCd 
GROUP BY O.OrderNo, O.OrderDate, O.OrderTime, O.DeliveryAddress, O.DeliveryPostalCd, O.DeliveryTel, OS.StatusDesc, O.Email
)