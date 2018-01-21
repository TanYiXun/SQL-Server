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

/*
DELETE FROM Area
DELETE FROM Branch
DELETE FROM Choice
DELETE FROM Item
DELETE FROM Member
DELETE FROM "Order"
DELETE FROM OrderItem
DELETE FROM OrderStatus
DELETE FROM PizzaCrust
DELETE FROM PizzaPrice
DELETE FROM PizzaSize
DELETE FROM PromoLine
DELETE FROM PromoLineItem
DELETE FROM Promotion 
*/

INSERT INTO Area VALUES ('A001','West')
INSERT INTO Area VALUES ('A002','Central')
INSERT INTO Area VALUES ('A003','East')
INSERT INTO Area VALUES ('A004','North')
INSERT INTO Area VALUES ('A005','South')

INSERT INTO Branch Values ('BR000001','Pizza Hut Tampines','4 TAMPINES CENTRAL 5, #02-02, TAMPINES MALL, SINGAPORE 529510','A003')
INSERT INTO Branch Values ('BR000002','Pizza Hut Raffles Place','6 RAFFLES BOULEVARD, #03-211, MARINA SQUARE, SINGAPORE 039594','A002')
INSERT INTO Branch Values ('BR000003','Pizza Hut Jurong West','1 JURONG WEST CENTRAL 2, #01-33, JURONG POINT, SINGAPORE 648886','A001')
INSERT INTO Branch Values ('BR000004','Pizza Hut Harbourfront','1 MARITIME SQUARE, #01-69, HARBOURFRONT CENTRE, SINGAPORE 099253','A005')
INSERT INTO Branch Values ('BR000005','Pizza Hut Woodlands','1 WOODLANDS SQUARE, #B1-25, CAUSEWAY POINT, SINGAPORE 738099','A004')

INSERT INTO Choice VALUES ('OR000001','I0000001','PM000001',2)
INSERT INTO Choice VALUES ('OR000002','I0000002','PM000001',2)
INSERT INTO Choice VALUES ('OR000003','I0000003','PM000001',3)
INSERT INTO Choice VALUES ('OR000004','I0000001','PM000002',3)
INSERT INTO Choice VALUES ('OR000005','I0000002','PM000002',4)
INSERT INTO Choice VALUES ('OR000005','I0000003','PM000002',5)

INSERT INTO Item VALUES ('I0000001','Hawaiian','An all-time favourite. Tender chicken ham combined with sweet and succulent pineapple chunks for a taste of the good ol'' days.','Pizza',null)
INSERT INTO Item VALUES ('I0000002','Chicken Supreme','Sink your teeth into a generous spread of savoury chicken ham, spicy chicken chunks, roasted chicken, topped with onions, capsicums and mushrooms.','Pizza',null)
INSERT INTO Item VALUES ('I0000003','Super Supreme','Always a house favourite, combining juicy ground beef, smoky cabanossi sausages, beef pepperoni, chicken ham, and a luscious mix of capsicums, onions, olives, mushrooms and pineapple chunks.','Pizza',null)
INSERT INTO Item VALUES ('I0000004','Pepperoni','Combining the aromatic flavour of beef pepperoni and 100% mozzarella cheese, this is one classic treat that’s always a great choice.','Pizza',null)
INSERT INTO Item VALUES ('I0000005','Veggie Lover''s','A delightful combination of garden fresh onions, olives, capsicums and mushrooms, sweetened with pineapple chunks and diced tomatoes.','Pizza',null)
INSERT INTO Item VALUES ('I0000006','Curry Chicken','Italian classic meets local favourite. Spicy chicken chunk, potatoes, onions and diced tomatoes come together for an authentic flavour of rich spices.','Pizza',null)
INSERT INTO Item VALUES ('I0000007','Meat Galore','The perfect meat-lover''s choice. Chicken ham, pepperoni, minced beef and cabanossi sausages, with a tomato mozzarella melt.','Pizza',null)
INSERT INTO Item VALUES ('I0000008','Chicken Pepperoni','A mouth-watering combination of savoury chicken pepperoni, chopped basil and 100% mozzarella cheese. Always a treat!','Pizza',null)
INSERT INTO Item VALUES ('I0000009','BBQ Chicken','Spicy chicken chunks, chicken ham, luscious pineapple chunks with fresh capsicums, baked on a sweet and smoky BBQ sauce.','Pizza',null)
INSERT INTO Item VALUES ('I0000010','The Four Cheese','Send your tastebuds into a cheesy frenzy with a divine combination of 4 cheeses - mozzarella, parmesan, cheddar and cream cheese.','Pizza',null)
INSERT INTO Item VALUES ('I0000011','Soup of the Day','Check with the chef','Soup',4.00)
INSERT INTO Item VALUES ('I0000012','Chicken Pomodoro','Linguine, spicy chicken chunks, onions and fresh button mushrooms, tossed in a tangy tomato sauce.','Pasta',4.00)
INSERT INTO Item VALUES ('I0000013','Beef Lasagne','A classic favourite. Generous minced beef in creamy tomato sauce layered between sheets of fresh pasta, topped with a mozzarella melt.','Pasta',13.50)
INSERT INTO Item VALUES ('I0000014','Prawn Aglio Olio','A mild spicy dish with a bite. Fresh, succulent prawns lightly tossed in olive oil, crushed garlic and sliced chili padi.','Pasta',11.00)
INSERT INTO Item VALUES ('I0000015','Chicken Royale Baked Pasta','Roast chicken and chunky honey chicken ham, combined with mushrooms and roasted onions in a cheesy penne bake.','Pasta',15.50)
INSERT INTO Item VALUES ('I0000016','Turkey Bacon Aglio Olio','Garlic and black pepper tossed pasta with sautéed button mushrooms and savoury turkey bacon.','Pasta',9.50)
INSERT INTO Item VALUES ('I0000017','Traditional Bolognaise','A classic recipe made more indulgent with juicy ground beef and chunky beef balls in a tangy bolognaise sauce.','Pasta',10.00)
INSERT INTO Item VALUES ('I0000018','Curry Zazzle Baked Rice','Spicy chicken chunks, potato cubes and curry sauce with pilaf rice.','Baked Rice',10.00)
INSERT INTO Item VALUES ('I0000019','Country Pie','A combination of roasted chicken and turkey bacon, complemented by onions, mushrooms and tomato sauce, covered in velvety mash and parmesan cheese.','Backed Rice',10.50)
INSERT INTO Item VALUES ('I0000020','Magnificent Appetizer Pack','Enjoy 4 different appetizers in our new Magnificent Appetizer Pack. Includes 4pcs Mozzarella Sticks, Honey Roasted Wings, Chicken Tenders and Battered Chicken with Cheese Sauce','Sides',20.50)
INSERT INTO Item VALUES ('I0000021','Hersheys''s Chocolate Chip Cookie','A soft and chewy cookie laden with crunchy chocolate chips, served warm.','Sides',5.50)
INSERT INTO Item VALUES ('I0000022','4Pcs Chicken Tenders','Breaded chicken fillets fried to a golden brown perfection.','Sides',null)
INSERT INTO Item VALUES ('I0000023','Pepsi','1.5 Litre Bottle','Beverages',3.00)
INSERT INTO Item VALUES ('I0000024','Pokka Green Tea','1.5 Litre Bottle','Beverages',3.00)

INSERT INTO Member VALUES ('kimjongun@pyongyang.com','nukesaregreat','Kim Jong Un','Ave 2, Potong Pasir',null,null,null,'350145','93827308')
INSERT INTO Member VALUES ('donaldtrump@whitehouse.gov','soundsgoodoesntwork','Donald John Trump','16a, Bali Lane',null,null,null,'189852','92837491')
INSERT INTO Member VALUES ('vladimirputin@kgb.ru','cykablyat','Vladimir Vladimirovich Putin','72 bukit tinggi road',null,null,null,'289760','89473625')
INSERT INTO Member VALUES ('xijingping@communism.cn','nihao','Xi Jinping','110 Turf Club Road',null,null,null,'288000','91837462')
INSERT INTO Member VALUES ('tonytan@gmail.com','sgisbest','Tony Tan Keng Yam','1 Kaki Bukit View #05-11 Techview',null,null,null,'415941','92038475')

INSERT INTO "Order" VALUES ('OR000001','2017-04-20','23:20:20','Ave 2, Potong Pasir','93827308','350145','OS01','BR000001','kimjongun@pyongyang.com')
INSERT INTO "Order" VALUES ('OR000002','2017-05-21','11:00:00','16a, Bali Lane','92837491','189852','OS02','BR000002','donaldtrump@whitehouse.gov')
INSERT INTO "Order" VALUES ('OR000003','2017-06-22','08:20:40','72 bukit tinggi road','89473625','289760','OS03','BR000003','vladimirputin@kgb.ru')
INSERT INTO "Order" VALUES ('OR000004','2017-07-23','12:50:50','110 Turf Club Road','91837462','288000','OS04','BR000004','xijingping@communism.cn')
INSERT INTO "Order" VALUES ('OR000005','2017-08-24','17:00:20','1 Kaki Bukit View #05-11 Techview','92038475','415941','OS05','BR000005','tonytan@gmail.com')
INSERT INTO "Order" VALUES ('OR000006','2017-04-20','23:20:20','Ave 2, Potong Pasir','93827308','350145','OS01','BR000001','kimjongun@pyongyang.com')
INSERT INTO "Order" VALUES ('OR000007','2017-05-21','11:00:00','16a, Bali Lane','92837491','189852','OS02','BR000002','donaldtrump@whitehouse.gov')
INSERT INTO "Order" VALUES ('OR000008','2017-06-22','08:20:40','72 bukit tinggi road','89473625','289760','OS03','BR000003','vladimirputin@kgb.ru')
INSERT INTO "Order" VALUES ('OR000009','2017-07-23','12:50:50','110 Turf Club Road','91837462','288000','OS04','BR000004','xijingping@communism.cn')
INSERT INTO "Order" VALUES ('OR000010','2017-08-24','17:00:20','1 Kaki Bukit View #05-11 Techview','92038475','415941','OS05','BR000005','tonytan@gmail.com')
INSERT INTO "Order" VALUES ('OR000011','2017-04-20','23:20:20','Ave 2, Potong Pasir','93827308','350145','OS01','BR000001','kimjongun@pyongyang.com')
INSERT INTO "Order" VALUES ('OR000012','2017-05-21','11:00:00','16a, Bali Lane','92837491','189852','OS02','BR000002','donaldtrump@whitehouse.gov')

INSERT INTO OrderItem VALUES ('OR000006','I0000006','C0000003',5,'L')
INSERT INTO OrderItem VALUES ('OR000007','I0000012',null,2,null)
INSERT INTO OrderItem VALUES ('OR000008','I0000013',null,3,null) 
INSERT INTO OrderItem VALUES ('OR000009','I0000014',null,4,null) 
INSERT INTO OrderItem VALUES ('OR000010','I0000015',null,5,null) 
INSERT INTO OrderItem VALUES ('OR000011','I0000016',null,6,null) 
INSERT INTO OrderItem VALUES ('OR000012','I0000017',null,7,null) 


INSERT INTO OrderItem VALUES ('OR000001','I0000001','C0000001',2,'P')
INSERT INTO OrderItem VALUES ('OR000002','I0000002','C0000001',3,'P')
INSERT INTO OrderItem VALUES ('OR000003','I0000003','C0000002',3,'R')
INSERT INTO OrderItem VALUES ('OR000004','I0000004','C0000002',4,'R')
INSERT INTO OrderItem VALUES ('OR000005','I0000005','C0000003',4,'L')
INSERT INTO OrderItem VALUES ('OR000006','I0000006','C0000003',5,'L')
INSERT INTO OrderItem VALUES ('OR000007','I0000012',null,2,null)
INSERT INTO OrderItem VALUES ('OR000008','I0000013',null,3,null) 
INSERT INTO OrderItem VALUES ('OR000009','I0000014',null,4,null) 
INSERT INTO OrderItem VALUES ('OR000010','I0000015',null,5,null) 
INSERT INTO OrderItem VALUES ('OR000011','I0000016',null,6,null) 
INSERT INTO OrderItem VALUES ('OR000012','I0000017',null,7,null)  

INSERT INTO OrderStatus VALUES ('OS01','confirmed ordered')
INSERT INTO OrderStatus VALUES ('OS02','on preparation')
INSERT INTO OrderStatus VALUES ('OS03','on delivering')
INSERT INTO OrderStatus VALUES ('OS04','delivered')
INSERT INTO OrderStatus VALUES ('OS05','pending payment')
INSERT INTO OrderStatus VALUES ('OS06','delivered and payment confirmed')

INSERT INTO PizzaCrust VALUES ('C0000001','Pan Pizza')
INSERT INTO PizzaCrust VALUES ('C0000002','Chessy Stuffed Crust')
INSERT INTO PizzaCrust VALUES ('C0000003','Hand Stretched Thin')

INSERT INTO PizzaPrice VALUES ('I0000001','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000001','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000001','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000001','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000001','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000001','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000001','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000001','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000002','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000002','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000002','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000002','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000002','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000002','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000002','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000002','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000003','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000003','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000003','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000003','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000003','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000003','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000003','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000003','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000004','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000004','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000004','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000004','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000004','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000004','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000004','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000004','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000005','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000005','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000005','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000005','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000005','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000005','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000005','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000005','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000006','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000006','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000006','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000006','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000006','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000006','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000006','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000006','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000007','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000007','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000007','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000007','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000007','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000007','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000007','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000007','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000008','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000008','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000008','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000008','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000008','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000008','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000008','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000008','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000009','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000009','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000009','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000009','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000009','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000009','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000009','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000009','L','C0000003',22.00)

INSERT INTO PizzaPrice VALUES ('I0000010','P','C0000001',10.00)
INSERT INTO PizzaPrice VALUES ('I0000010','P','C0000002',11.00)
INSERT INTO PizzaPrice VALUES ('I0000010','R','C0000001',15.00)
INSERT INTO PizzaPrice VALUES ('I0000010','R','C0000002',16.00)
INSERT INTO PizzaPrice VALUES ('I0000010','R','C0000003',17.00)
INSERT INTO PizzaPrice VALUES ('I0000010','L','C0000001',20.00)
INSERT INTO PizzaPrice VALUES ('I0000010','L','C0000002',21.00)
INSERT INTO PizzaPrice VALUES ('I0000010','L','C0000003',22.00)

INSERT INTO PizzaSize VALUES ('P',1)
INSERT INTO PizzaSize VALUES ('R',2)
INSERT INTO PizzaSize VALUES ('L',3)

INSERT INTO PromoLine VALUES ('PML00001','PM000001','P',1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00002','PM000001','P',1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00003','PM000001','P',1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00004','PM000001','P',1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00005','PM000001','P',1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00006','PM000001',null,1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00007','PM000001',null,1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00008','PM000001',null,1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00009','PM000001',null,1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00010','PM000001',null,1,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00011','PM000001',null,1,'Dine-In')
--same table
INSERT INTO PromoLine VALUES ('PML00001','PM000002','R',2,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00002','PM000002','R',2,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00003','PM000002','R',2,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00004','PM000002','R',2,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00005','PM000002','R',2,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00006','PM000002','R',2,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00007','PM000002',null,4,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00008','PM000002',null,4,'Dine-In')
INSERT INTO PromoLine VALUES ('PML00009','PM000002',null,4,'Dine-In')

INSERT INTO PromoLineItem VALUES ('PML00001','PM000001','I0000001')--Hawaiian
INSERT INTO PromoLineItem VALUES ('PML00002','PM000001','I0000005')--Veggie Lover's
INSERT INTO PromoLineItem VALUES ('PML00003','PM000001','I0000004')--Pepperoni
INSERT INTO PromoLineItem VALUES ('PML00004','PM000001','I0000009')--BBQ Chicken
INSERT INTO PromoLineItem VALUES ('PML00005','PM000001','I0000010')--The Four Cheese
INSERT INTO PromoLineItem VALUES ('PML00006','PM000001','I0000012')--Chicken Pomodoro
INSERT INTO PromoLineItem VALUES ('PML00007','PM000001','I0000017')--Traditional Bolognaise
INSERT INTO PromoLineItem VALUES ('PML00008','PM000001','I0000014')--Prawn Aglio Olio
INSERT INTO PromoLineItem VALUES ('PML00009','PM000001','I0000018')--Curry Zazzle
INSERT INTO PromoLineItem VALUES ('PML00010','PM000001','I0000023')--Pepsi
INSERT INTO PromoLineItem VALUES ('PML00011','PM000001','I0000024')--Pokka Green Tea
--same table
INSERT INTO PromoLineItem VALUES ('PML00001','PM000002','I0000001')--Pizza
INSERT INTO PromoLineItem VALUES ('PML00002','PM000002','I0000002')--Pizza
INSERT INTO PromoLineItem VALUES ('PML00003','PM000002','I0000003')--Pizza
INSERT INTO PromoLineItem VALUES ('PML00004','PM000002','I0000004')--Pizza
INSERT INTO PromoLineItem VALUES ('PML00005','PM000002','I0000005')--Pizza
INSERT INTO PromoLineItem VALUES ('PML00006','PM000002','I0000006')--Pizza
INSERT INTO PromoLineItem VALUES ('PML00007','PM000002','I0000011')--Soup of day
INSERT INTO PromoLineItem VALUES ('PML00008','PM000002','I0000023')--Soft Drink
INSERT INTO PromoLineItem VALUES ('PML00009','PM000002','I0000024')--Soft Drink

INSERT INTO Promotion VALUES ('PM000001','Student Happy Hour','13:30:00','17:00:00',5.50,'Monday','Friday')
INSERT INTO Promotion VALUES ('PM000002','Hut''s Feast',null,null,49.90,null,null)




