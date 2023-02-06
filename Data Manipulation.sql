
USE AirliftExpress_Project_1

--<<<---------------------------------------Data Manipulation--------------------------------------->>>>

--USED to set all products according to their brand Names
UPDATE dbo.Product SET Category='Grocery'
UPDATE dbo.Product SET brand='Lays' WHERE name ='Lays Classic' OR name ='Lays French' OR name ='Lays Masala' OR name ='Lays Barbecue'
UPDATE dbo.Product SET brand='Coke' WHERE name ='Coca Cola' OR name ='Sprite' OR name ='Deit Coke'OR name ='Fanta'OR name ='Fuze'
UPDATE dbo.Product SET brand='PepsiCo' WHERE name ='Pepsi' OR name ='Dew' OR name ='7up' OR name ='Deit Pepsi' OR name ='Marinda'
UPDATE dbo.Product SET brand='Meat' WHERE name ='Frozen Meat'
UPDATE dbo.Product SET brand='Vegitable'WHERE name ='Onion'OR name ='Tomato'OR name ='Potato'OR name ='Corn'OR name ='Carrot'
UPDATE dbo.Product SET brand='Fruits'WHERE name ='Apple'OR name ='Mango'OR name ='Banana'OR name ='Grapes'OR name ='PineApple'OR name ='Strawberry'
UPDATE dbo.Product SET brand='NESTLE'WHERE name ='VITAL'OR name ='MILK PACK'OR name ='NIDO'OR name ='MILO'OR name ='EVERYDAY'OR name ='NESVITA'OR name ='NESFRUTA'
UPDATE dbo.Product SET brand='DALDA'WHERE name ='Olive Oil'OR name ='Corn Oil'OR name ='Ghee Oil'
UPDATE dbo.Product SET brand='MITCHELL'WHERE name ='Mango Squash'OR name ='Lemon Squash'OR name ='Jublee'OR name ='Happy Heart'
UPDATE dbo.Product SET brand='NATIONAL'WHERE name ='Baryani Masala'OR name ='National Garlic'OR name ='National Pickel'
UPDATE dbo.Product SET brand='Vital'WHERE name ='Vital Tea'OR name ='Vital Soup' 
UPDATE dbo.Product SET brand='Tapal'WHERE name ='DaneDar Tea'OR name ='Family Mixed'
UPDATE dbo.Product SET brand='OMORE'WHERE name ='Kulfa'OR name ='Chocbar'OR name ='Caramel Crunch'
UPDATE dbo.Product SET brand='SHAN'WHERE name ='Achari Ghost'OR name ='Chat Masala'
UPDATE dbo.Product SET brand='SHEZAN'WHERE name ='Tomato Ketcup'OR name ='Shezan Juice'OR name ='Shezan Jam'OR name ='Samar Qand'
UPDATE dbo.Product SET brand='Kashmir'WHERE name ='Ghee' OR name ='Milk'OR name ='Yoghurt'
UPDATE dbo.Product SET brand='Unilever'WHERE name ='Surf Excel'OR name ='Dove'OR name ='Lux'OR name ='Clear'OR name ='Fair & Lovely'  
UPDATE dbo.Product SET brand='Fauji'WHERE name ='Corn Flakes'OR name ='Choco Cups' 
UPDATE dbo.Product SET brand='Gourmet'WHERE name ='Ralph Orange'OR name ='Gourmet Cola'OR name ='Gourmet Nimko'
UPDATE dbo.Product SET brand='Comsetic'WHERE name ='EyeLiner'OR name ='Lip gloss'OR name ='Lip Liner'OR name ='Lotion'OR name ='Lipsticks'OR name ='Mirror' 
UPDATE dbo.Product SET brand='Wall'WHERE name ='ChocBar'OR name ='Feast' 
UPDATE dbo.Product SET brand='Dettol'WHERE name ='Dettol Soup'
UPDATE dbo.Product SET brand='Knorr'WHERE name ='Knorr ChatPatta'OR name ='Knorr Tomato'
UPDATE dbo.Product SET brand='Maggi'WHERE name ='Maggi Noodles'
--END



--USED to set each record unique pid
UPDATE Product SET Status='Available'

UPDATE Inventory_Product SET name='MILK PACK' WHERE pid = 1
UPDATE Inventory_Product SET name='Deit Coke' WHERE pid = 2
UPDATE Inventory_Product SET name='Strawberry' WHERE pid = 3
UPDATE Inventory_Product SET name='Vital Tea' WHERE pid = 4
UPDATE Inventory_Product SET name='Ghee' WHERE pid = 5
UPDATE Inventory_Product SET name='Lays Classic' WHERE pid = 6
UPDATE Inventory_Product SET name='Shezan Juice' WHERE pid = 7
UPDATE Inventory_Product SET name='Deit Pepsi' WHERE pid = 8
UPDATE Inventory_Product SET name='Chocho Cups' WHERE pid = 9
UPDATE Inventory_Product SET name='National Pickel' WHERE pid = 10
UPDATE Inventory_Product SET name='Apple' WHERE pid = 11
UPDATE Inventory_Product SET name='Corn Flakes' WHERE pid = 12
UPDATE Inventory_Product SET name='Family Mixed' WHERE pid = 13
UPDATE Inventory_Product SET name='Lays Masala' WHERE pid = 14
UPDATE Inventory_Product SET name='Frozen Meat' WHERE pid = 15
UPDATE Inventory_Product SET name='Mirror' WHERE pid = 16
UPDATE Inventory_Product SET name='Tomato Ketchup' WHERE pid = 17
UPDATE Inventory_Product SET name='Happy Heart' WHERE pid = 18
UPDATE Inventory_Product SET name='Grapes' WHERE pid = 19
UPDATE Inventory_Product SET name='Mango Squash' WHERE pid = 20
UPDATE Inventory_Product SET name='Surf Exel' WHERE pid = 21
UPDATE Inventory_Product SET name='Carrot' WHERE pid = 22
UPDATE Inventory_Product SET name='Caramel Crunch' WHERE pid = 23
UPDATE Inventory_Product SET name='Chat Masala' WHERE pid = 24
UPDATE Inventory_Product SET name='Baryani Masala' WHERE pid = 25
UPDATE Inventory_Product SET name='Ghee Oil' WHERE pid = 26
UPDATE Inventory_Product SET name='National Ketchup' WHERE pid = 27
UPDATE Inventory_Product SET name='Knorr ChatPatta' WHERE pid = 28
UPDATE Inventory_Product SET name='Banana' WHERE pid = 29
UPDATE Inventory_Product SET name='Coca Cola' WHERE pid = 30
UPDATE Inventory_Product SET name='DaneDar Tea' WHERE pid = 31
UPDATE Inventory_Product SET name='Marinda' WHERE pid = 32
UPDATE Inventory_Product SET name='Lemon Squash' WHERE pid = 33
UPDATE Inventory_Product SET name='Dove' WHERE pid = 34
UPDATE Inventory_Product SET name='Lux' WHERE pid = 35
UPDATE Inventory_Product SET name='Vital Soup' WHERE pid = 36
UPDATE Inventory_Product SET name='Gourmet Cola' WHERE pid = 37
UPDATE Inventory_Product SET name='Potato' WHERE pid = 38
UPDATE Inventory_Product SET name='Knorr Tomato' WHERE pid = 39
UPDATE Inventory_Product SET name='Clear' WHERE pid = 40
UPDATE Inventory_Product SET name='Yoghurt' WHERE pid = 41
UPDATE Inventory_Product SET name='Sprite' WHERE pid = 42
UPDATE Inventory_Product SET name='EVERYDAY' WHERE pid = 43
UPDATE Inventory_Product SET name='Corn' WHERE pid = 44
UPDATE Inventory_Product SET name='Jublee' WHERE pid = 45
UPDATE Inventory_Product SET name='Samar Qand' WHERE pid = 46
UPDATE Inventory_Product SET name='Dew' WHERE pid = 47
UPDATE Inventory_Product SET name='Onion' WHERE pid = 48
UPDATE Inventory_Product SET name='Pepsi' WHERE pid = 49
UPDATE Inventory_Product SET name='Lays Barbecue' WHERE pid = 50
UPDATE Inventory_Product SET name='Lotion' WHERE pid = 51
UPDATE Inventory_Product SET name='Dettol Soup' WHERE pid = 52
UPDATE Inventory_Product SET name='Milk' WHERE pid = 53
UPDATE Inventory_Product SET name='7up' WHERE pid = 54
UPDATE Inventory_Product SET name='Olive Oil' WHERE pid = 55
UPDATE Inventory_Product SET name='Kulfa' WHERE pid = 56
UPDATE Inventory_Product SET name='Ralph Orange' WHERE pid = 57
UPDATE Inventory_Product SET name='Mango' WHERE pid = 58
UPDATE Inventory_Product SET name='Fair & Lovely' WHERE pid = 59
UPDATE Inventory_Product SET name='Feast' WHERE pid = 60
UPDATE Inventory_Product SET name='Tomato' WHERE pid = 61
UPDATE Inventory_Product SET name='Lipstick' WHERE pid = 62
UPDATE Inventory_Product SET name='EyeLiner' WHERE pid = 63
UPDATE Inventory_Product SET name='Chocbar' WHERE pid = 64
UPDATE Inventory_Product SET name='Lip gloss' WHERE pid = 65
UPDATE Inventory_Product SET name='Shezan Jam' WHERE pid = 66
UPDATE Inventory_Product SET name='Fanta' WHERE pid = 67
UPDATE Inventory_Product SET name='PineApple' WHERE pid = 68
UPDATE Inventory_Product SET name='NESFRUTA' WHERE pid = 69
UPDATE Inventory_Product SET name='NIDO' WHERE pid = 70
UPDATE Inventory_Product SET name='Gourmet Nimko' WHERE pid = 71
UPDATE Inventory_Product SET name='Lays French' WHERE pid = 72
UPDATE Inventory_Product SET name='NESVITA' WHERE pid = 73
UPDATE Inventory_Product SET name='MILO' WHERE pid = 74
UPDATE Inventory_Product SET name='Lip Liner' WHERE pid = 75
UPDATE Inventory_Product SET name='Fuze' WHERE pid = 76
UPDATE Inventory_Product SET name='Achari Gosht' WHERE pid = 77
UPDATE Inventory_Product SET name='Maggi Noodles' WHERE pid = 78
UPDATE Inventory_Product SET name='Corn Oil' WHERE pid = 79
--END



--Quiries to match OrderNumber OF Addrid with Rider_Order
SELECT orderNumber, userid FROM Orders WHERE userid=100
SELECT addrid FROM Address WHERE userid = 100

--100
UPDATE Rider_Order SET addrid=18 WHERE orderNumber = 2108 OR orderNumber =2276  OR orderNumber =3533
OR orderNumber =3698 OR orderNumber =4437 OR orderNumber =4453 OR orderNumber =4478 OR orderNumber =4636 OR orderNumber =4669 OR orderNumber =4743
OR orderNumber =5228 OR orderNumber =5745 OR orderNumber =6593 OR orderNumber =6906 OR orderNumber =7316 OR orderNumber =7460 OR orderNumber =7745

--98
UPDATE Rider_Order SET addrid=9 WHERE orderNumber = 2373 OR orderNumber =3302 
OR orderNumber =5644 OR orderNumber =7515

--97
UPDATE Rider_Order SET addrid=15 WHERE orderNumber = 2924 OR orderNumber =4173 
OR orderNumber =5749 OR orderNumber =5918 OR orderNumber =7066 OR orderNumber =7617

--95
UPDATE Rider_Order SET addrid=23 WHERE orderNumber = 2329 OR orderNumber =2625 
OR orderNumber =2882 OR orderNumber =3382 OR orderNumber =5835

--94
UPDATE Rider_Order SET addrid=34 WHERE orderNumber = 1278 OR orderNumber =1559 
OR orderNumber =5361 OR orderNumber =7041

--93
UPDATE Rider_Order SET addrid=71 WHERE orderNumber = 3101 OR orderNumber =4308 
OR orderNumber =4535 OR orderNumber =4934 OR orderNumber =7830

--92
UPDATE Rider_Order SET addrid=7 WHERE orderNumber = 1918 OR orderNumber =2065 
OR orderNumber =3704 OR orderNumber =5490 OR orderNumber =7165 OR orderNumber =7871 

--91
UPDATE Rider_Order SET addrid=40 WHERE orderNumber = 3340 OR orderNumber =4041 
OR orderNumber =4532 OR orderNumber =5336 OR orderNumber =5884 OR orderNumber =6569 OR orderNumber =7441
OR orderNumber =7640

--90
UPDATE Rider_Order SET addrid=27 WHERE orderNumber = 2446 OR orderNumber =3932 
OR orderNumber =4299 OR orderNumber =5687 OR orderNumber =5750 OR orderNumber =7856

--88
UPDATE Rider_Order SET addrid=63 WHERE orderNumber = 3670 OR orderNumber =3909 
OR orderNumber =4209 OR orderNumber =6484 OR orderNumber =7075 OR orderNumber =7678

--87
UPDATE Rider_Order SET addrid=64 WHERE orderNumber = 3336 OR orderNumber =5102 
OR orderNumber =5353 OR orderNumber =7333 

--86
UPDATE Rider_Order SET addrid=17 WHERE orderNumber = 2001 OR orderNumber =2936 
OR orderNumber =3033 OR orderNumber =3516 OR orderNumber =4011 OR orderNumber =4819 OR orderNumber =5259
OR orderNumber =5885 


--85
UPDATE Rider_Order SET addrid=45 WHERE orderNumber = 1238 OR orderNumber =1400 
OR orderNumber =1414 OR orderNumber =3339 OR orderNumber =3896 OR orderNumber =4338 OR orderNumber =5894
OR orderNumber =6077 OR orderNumber =7431 

--83
UPDATE Rider_Order SET addrid=22 WHERE orderNumber = 2041 OR orderNumber =2179 
OR orderNumber =3655 OR orderNumber =5039 OR orderNumber =5156 OR orderNumber =5305 OR orderNumber =6601
OR orderNumber =6884 OR orderNumber =7377


--82
UPDATE Rider_Order SET addrid=2 WHERE orderNumber = 1846 OR orderNumber =2664 
OR orderNumber =3789 OR orderNumber =4071 OR orderNumber =5109 OR orderNumber =5321 OR orderNumber =5636
OR orderNumber =6201 OR orderNumber =7461 OR orderNumber =7714 

--81
UPDATE Rider_Order SET addrid=56 WHERE orderNumber = 1340 OR orderNumber =2881 
OR orderNumber =7827 OR orderNumber =7861

--80
UPDATE Rider_Order SET addrid=21 WHERE orderNumber = 2283 OR orderNumber =3077 
OR orderNumber =3216 OR orderNumber =3492 OR orderNumber =5429 OR orderNumber =5796 OR orderNumber =6644

--78
UPDATE Rider_Order SET addrid=59 WHERE orderNumber = 1461 OR orderNumber =2067 
OR orderNumber =2404 OR orderNumber =2781 OR orderNumber =4037 OR orderNumber =4823 OR orderNumber =4940
OR orderNumber =7890 

--77
UPDATE Rider_Order SET addrid=57 WHERE orderNumber = 1283 OR orderNumber =3888 
OR orderNumber =5273 OR orderNumber =5435 OR orderNumber =7475 OR orderNumber =7497

--76
UPDATE Rider_Order SET addrid=3 WHERE orderNumber = 1280 OR orderNumber =5261 
OR orderNumber =5464 OR orderNumber =6406 


--75
UPDATE Rider_Order SET addrid=78 WHERE orderNumber = 3567 OR orderNumber =4954 

--74
UPDATE Rider_Order SET addrid=1 WHERE orderNumber = 1330 OR orderNumber =1729 
OR orderNumber =2707 OR orderNumber =4010 OR orderNumber =6928 OR orderNumber =7151


--73
UPDATE Rider_Order SET addrid=46 WHERE orderNumber = 2495 OR orderNumber =2986 
OR orderNumber =4345 OR orderNumber =5772 OR orderNumber =6016 OR orderNumber =7701 

--72
UPDATE Rider_Order SET addrid=36 WHERE orderNumber = 2769 OR orderNumber =4292 
OR orderNumber =5072 OR orderNumber =6108 OR orderNumber =7061 

--71
UPDATE Rider_Order SET addrid=66 WHERE orderNumber = 4047 OR orderNumber =4131 
OR orderNumber =4862 OR orderNumber =5560 OR orderNumber =6421 OR orderNumber =7256 OR orderNumber =7291


--70
UPDATE Rider_Order SET addrid=52 WHERE orderNumber = 2129 OR orderNumber =2370 
OR orderNumber =4621 OR orderNumber =4774 OR orderNumber =4809 OR orderNumber =5013 


--69
UPDATE Rider_Order SET addrid=42 WHERE orderNumber = 1747 OR orderNumber =2547 
OR orderNumber =3843 OR orderNumber =4860 OR orderNumber =5080 OR orderNumber =6580 OR orderNumber =7874



--68
UPDATE Rider_Order SET addrid=25 WHERE orderNumber = 1269 OR orderNumber =1890 
OR orderNumber =2731 OR orderNumber =3283 OR orderNumber =6025 OR orderNumber =6387 OR orderNumber =7518

--67
UPDATE Rider_Order SET addrid=19 WHERE orderNumber = 1418 OR orderNumber =2714 
OR orderNumber =3161 OR orderNumber =3200 OR orderNumber =4326 OR orderNumber =4413 OR orderNumber =4788
OR orderNumber =5140 OR orderNumber =6359 OR orderNumber =6591 


--66
UPDATE Rider_Order SET addrid=13 WHERE orderNumber = 2249 OR orderNumber =3176 
OR orderNumber =4169 OR orderNumber =5344 OR orderNumber =7634 


--65
UPDATE Rider_Order SET addrid=58 WHERE orderNumber = 1731 OR orderNumber =2002 
OR orderNumber =2042 OR orderNumber =3707 OR orderNumber =5034 OR orderNumber =5383 OR orderNumber =5407
OR orderNumber =6305 OR orderNumber =6574 OR orderNumber =6878 




--64
UPDATE Rider_Order SET addrid=28 WHERE orderNumber = 1665 OR orderNumber =1839 
OR orderNumber =2762 OR orderNumber =5358 OR orderNumber =5449 OR orderNumber =6678 OR orderNumber =7520




--63
UPDATE Rider_Order SET addrid=69 WHERE orderNumber = 3350 OR orderNumber =4455 
OR orderNumber =5862 OR orderNumber =7502 



--62
UPDATE Rider_Order SET addrid=35 WHERE orderNumber = 2381 OR orderNumber =2698 
OR orderNumber =3259 OR orderNumber =4406 OR orderNumber =5686 OR orderNumber =6608



--60
UPDATE Rider_Order SET addrid=53 WHERE orderNumber = 1366 OR orderNumber =1772 
OR orderNumber =3074 OR orderNumber =3359 OR orderNumber =3445 OR orderNumber =4790 OR orderNumber =5393
OR orderNumber =7720


--58
UPDATE Rider_Order SET addrid=60 WHERE orderNumber = 1321 OR orderNumber =2573 
OR orderNumber =5971 OR orderNumber =6178 OR orderNumber =7024 OR orderNumber =7197 OR orderNumber =7323
OR orderNumber =7671 OR orderNumber =7704


--57
UPDATE Rider_Order SET addrid=6 WHERE orderNumber = 1262 OR orderNumber =2232 
OR orderNumber =2400 OR orderNumber =2557 OR orderNumber =3968 OR orderNumber =4449 OR orderNumber =6295



--56
UPDATE Rider_Order SET addrid=4 WHERE orderNumber = 3136 OR orderNumber =3430 
OR orderNumber =3538 OR orderNumber =4115 OR orderNumber =4840 OR orderNumber =7278 OR orderNumber =7674


--55
UPDATE Rider_Order SET addrid=74 WHERE orderNumber = 1905 OR orderNumber =2571 
OR orderNumber =2855 OR orderNumber =4255 OR orderNumber =4469 OR orderNumber =4805 OR orderNumber =5194
OR orderNumber =5291 OR orderNumber =6087 OR orderNumber =6719 OR orderNumber =6759

--54
UPDATE Rider_Order SET addrid=61 WHERE orderNumber = 1408 OR orderNumber =2421 
OR orderNumber =4572 OR orderNumber =5018 OR orderNumber =7843


--53
UPDATE Rider_Order SET addrid=54 WHERE orderNumber = 1335 OR orderNumber =1504 
OR orderNumber =2258 OR orderNumber =4816 OR orderNumber =5518 OR orderNumber =7007

--52
UPDATE Rider_Order SET addrid=29 WHERE orderNumber = 1428 OR orderNumber =1889 
OR orderNumber =3647 OR orderNumber =3678 OR orderNumber =4030 OR orderNumber =5082


--51
UPDATE Rider_Order SET addrid=26 WHERE orderNumber = 2490 OR orderNumber =4293 
OR orderNumber =4943 OR orderNumber =5059 OR orderNumber =5997 OR orderNumber =6165 OR orderNumber =6455
OR orderNumber =7530


--50
	UPDATE Rider_Order SET addrid=12 WHERE orderNumber = 1713 OR orderNumber =2294 
OR orderNumber =2697 OR orderNumber =2880 OR orderNumber =2915 OR orderNumber =4151 OR orderNumber =5438
OR orderNumber =6400 OR orderNumber =6976


--48
	UPDATE Rider_Order SET addrid=14 WHERE orderNumber = 1554 OR orderNumber =1589 
OR orderNumber =3037 OR orderNumber =6183 OR orderNumber =6820 OR orderNumber =7137


--47
	UPDATE Rider_Order SET addrid=41 WHERE orderNumber = 1897  OR orderNumber =2931

--46
	UPDATE Rider_Order SET addrid=8 WHERE orderNumber = 2237 OR orderNumber =4348 
OR orderNumber =4498 OR orderNumber =6423 OR orderNumber =6941 OR orderNumber =7014


--45
	UPDATE Rider_Order SET addrid=68 WHERE orderNumber = 1911 OR orderNumber =1933 
OR orderNumber =2724 OR orderNumber =2814 OR orderNumber =7734



--44
	UPDATE Rider_Order SET addrid=48 WHERE orderNumber = 1860 OR orderNumber =2792


--41
	UPDATE Rider_Order SET addrid=32 WHERE orderNumber = 1942 OR orderNumber =2408 
OR orderNumber =3002 OR orderNumber =6636 OR orderNumber =6683 OR orderNumber =6707 OR orderNumber =7103



--40
	UPDATE Rider_Order SET addrid=51 WHERE orderNumber = 3204 OR orderNumber =4376


--39
	UPDATE Rider_Order SET addrid=39 WHERE orderNumber = 1624 OR orderNumber =5098 
OR orderNumber =6040 OR orderNumber =6287 OR orderNumber =6729


--38
	UPDATE Rider_Order SET addrid=75 WHERE orderNumber = 3290 OR orderNumber =4388 
OR orderNumber =6079 OR orderNumber =6270 OR orderNumber =7772


--37
	UPDATE Rider_Order SET addrid=38 WHERE orderNumber = 1603 OR orderNumber =2553 
OR orderNumber =2864 OR orderNumber =3072 OR orderNumber =3333 OR orderNumber =5954 OR orderNumber =6142
OR orderNumber =6344 OR orderNumber =7812

--35
	UPDATE Rider_Order SET addrid=72 WHERE orderNumber = 1250 OR orderNumber =1892 
OR orderNumber =4113 OR orderNumber =6754 

--34
	UPDATE Rider_Order SET addrid=39 WHERE orderNumber = 2038 OR orderNumber =2111 
OR orderNumber =4460 OR orderNumber =4969

--33
	UPDATE Rider_Order SET addrid=20 WHERE orderNumber = 4079 OR orderNumber =4871 
OR orderNumber =5831 OR orderNumber =6336 OR orderNumber =7189 OR orderNumber =7636

--32
	UPDATE Rider_Order SET addrid=11 WHERE orderNumber = 6195 OR orderNumber =6578 
OR orderNumber =7001 OR orderNumber =7142 OR orderNumber =7367 OR orderNumber =7849 OR orderNumber =7868
OR orderNumber =7492

--30
	UPDATE Rider_Order SET addrid=47 WHERE orderNumber = 2391 OR orderNumber =5178 
OR orderNumber =5743 OR orderNumber =5747 OR orderNumber =6505 OR orderNumber =7194


--29
	UPDATE Rider_Order SET addrid=10 WHERE orderNumber = 3146 OR orderNumber =3303 
OR orderNumber =3762 OR orderNumber =5416 OR orderNumber =6479 OR orderNumber =7162

--28
	UPDATE Rider_Order SET addrid=33 WHERE orderNumber = 1343 OR orderNumber =1598 
OR orderNumber =2233 OR orderNumber =3767 OR orderNumber =4032 OR orderNumber =6952 


--27
	UPDATE Rider_Order SET addrid=77 WHERE orderNumber = 4140 OR orderNumber =4731 
OR orderNumber =6249 OR orderNumber =7143 OR orderNumber =7369 OR orderNumber =7805
--26
	UPDATE Rider_Order SET addrid=44 WHERE orderNumber = 2192 OR orderNumber =2499 
OR orderNumber =4179 OR orderNumber =5397 OR orderNumber =5423 OR orderNumber =5755 OR orderNumber =6837
OR orderNumber =7202
--25
	UPDATE Rider_Order SET addrid=80 WHERE orderNumber = 1412 OR orderNumber =1576 
OR orderNumber =2951 OR orderNumber =3571

--24
	UPDATE Rider_Order SET addrid=5 WHERE orderNumber = 1420 OR orderNumber =1715 
OR orderNumber =1830 OR orderNumber =1854 OR orderNumber =3895 OR orderNumber =5497 OR orderNumber =5694
OR orderNumber =7608

--22
	UPDATE Rider_Order SET addrid=70 WHERE orderNumber = 2858 OR orderNumber =3270 
OR orderNumber =4878 OR orderNumber =5318 OR orderNumber =5896 OR orderNumber =5936 OR orderNumber =6794
OR orderNumber =7322
	
	--21
	UPDATE Rider_Order SET addrid=50 WHERE orderNumber = 1613 OR orderNumber =3810 
OR orderNumber =7216 

--20
	UPDATE Rider_Order SET addrid=31 WHERE orderNumber = 1582 OR orderNumber =3485 
OR orderNumber =5107 OR orderNumber =5159 OR orderNumber =5863 OR orderNumber =6375 OR orderNumber =7354
OR orderNumber =7386

		--16
	UPDATE Rider_Order SET addrid=55 WHERE orderNumber = 2120 OR orderNumber =3071 
OR orderNumber =6963 OR orderNumber =7373 OR orderNumber =5062 OR orderNumber =5908 OR orderNumber =6957
OR orderNumber =7492



		--14
	UPDATE Rider_Order SET addrid=62 WHERE orderNumber = 1914 OR orderNumber =2914 
OR orderNumber =5501 OR orderNumber =6395 OR orderNumber =6718 


--13
UPDATE Rider_Order SET addrid=49 WHERE orderNumber = 1885 OR orderNumber =2066 
OR orderNumber =3517 OR orderNumber =3664 OR orderNumber =5062 OR orderNumber =5908 OR orderNumber =6957
OR orderNumber =7492



--12
UPDATE Rider_Order SET addrid=43 WHERE orderNumber = 2157 OR orderNumber =2824 
OR orderNumber =2877 OR orderNumber =3689 OR orderNumber =5260 OR orderNumber =5824 OR orderNumber =5994
OR orderNumber =7116 

--11
UPDATE Rider_Order SET addrid=67 WHERE orderNumber = 2860 OR orderNumber =3953 
OR orderNumber =4791 OR orderNumber =5695 OR orderNumber =7175

--9
UPDATE Rider_Order SET addrid=30 WHERE orderNumber = 2112 OR orderNumber =3467 
OR orderNumber =5333 OR orderNumber =7199 OR orderNumber =7454

--8
UPDATE Rider_Order SET addrid=79 WHERE orderNumber = 2337 OR orderNumber =2694 
OR orderNumber =3436 OR orderNumber =3982 OR orderNumber =4911 OR orderNumber =5615 OR orderNumber =5774
OR orderNumber =6727 OR orderNumber =7516

--7
UPDATE Rider_Order SET addrid=65 WHERE orderNumber = 1605 OR orderNumber =4052 
OR orderNumber =5561 OR orderNumber =6115 OR orderNumber =7034


--5
UPDATE Rider_Order SET addrid=37 WHERE orderNumber = 2037 OR orderNumber =4399 
OR orderNumber =5471

--4
UPDATE Rider_Order SET addrid=24 WHERE orderNumber = 1377 OR orderNumber =1629 
OR orderNumber =2109 OR orderNumber =3564 OR orderNumber =3604 OR orderNumber =4260 OR orderNumber =5129


--3
UPDATE Rider_Order SET addrid=16 WHERE orderNumber = 1974 OR orderNumber =2839 
OR orderNumber =2942 OR orderNumber =3152 OR orderNumber =7009

--1
UPDATE Rider_Order SET addrid=76 WHERE orderNumber = 3219 OR orderNumber =3406 
OR orderNumber =3858


--Issue is Orders user Id does not match Address User ID (RESOLVED)
SELECT * FROM Rider_Order; --500
SELECT * FROM Address; --80
SELECT * FROM Orders
SELECT * FROM Contain_Orders WHERE orderNumber = 1238






--Quiries to match CreditCardNumber OF Payment and CreditCard Table
SELECT orderNumber FROM Orders WHERE userid = 100

--100
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 100)
WHERE orderNumber =2108 OR orderNumber =2276 OR orderNumber =3533  OR orderNumber =3698 OR orderNumber =4437 OR
orderNumber =4453 OR orderNumber =4478 OR orderNumber =4636  OR orderNumber =4669 OR orderNumber =4743
OR orderNumber =5228 OR
orderNumber =5745 OR orderNumber =6593 OR orderNumber =6906  OR orderNumber =7316 OR orderNumber =7460
OR orderNumber =7745

--98
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 98) WHERE
   orderNumber =2373 OR orderNumber =3302 OR orderNumber =5644  OR orderNumber =7515

--97
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 97) WHERE
   orderNumber =2924 OR orderNumber =4173 OR orderNumber =5749  OR orderNumber =5918 OR orderNumber =7066 
OR orderNumber =7617

--95
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 95) WHERE
   orderNumber =2329 OR orderNumber =2625 OR orderNumber =2882  OR orderNumber =3382 OR orderNumber =5835

--94
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 94) WHERE
   orderNumber =1278 OR orderNumber =1559 OR orderNumber =5361  OR orderNumber =7041

--93
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 93) WHERE
   orderNumber =3101 OR orderNumber =4308 OR orderNumber =4535  OR orderNumber =4934 OR orderNumber =7830

--92
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 92) WHERE
   orderNumber =1918 OR orderNumber =2065 OR orderNumber =3704  OR orderNumber =5490 OR orderNumber =7165 
OR orderNumber =7871

--91
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 91) WHERE
   orderNumber =3340 OR orderNumber =4041 OR orderNumber =4532  OR orderNumber =5336 OR orderNumber =5884 
OR orderNumber =6569 OR orderNumber =7441 OR orderNumber =7640

--90
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 90) WHERE
   orderNumber =2446 OR orderNumber =3932 OR orderNumber =4299  OR orderNumber =5687 OR orderNumber =5750 
OR orderNumber =7856

--88
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 88) WHERE
   orderNumber =3670 OR orderNumber =3909 OR orderNumber =4209  OR orderNumber =6484 OR orderNumber =7075 
OR orderNumber =7678

--86
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 86) WHERE
   orderNumber =2001 OR orderNumber =2936 OR orderNumber =3033  OR orderNumber =3516 OR orderNumber =4011 
OR orderNumber =4819 OR orderNumber =5259 OR orderNumber =5885

--85
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 85) WHERE
   orderNumber =1238 OR orderNumber =1400 OR orderNumber =1414  OR orderNumber =3339 OR orderNumber =3896 
OR orderNumber =4338 OR orderNumber =5894 OR orderNumber =6077  OR orderNumber =7431

--83
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 83) WHERE
   orderNumber =2041 OR orderNumber =2179 OR orderNumber =3655  OR orderNumber =5039 OR orderNumber =5156 
OR orderNumber =5305 OR orderNumber =6601 OR orderNumber =6884  OR orderNumber =7377

--82
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 82) WHERE
   orderNumber =1846 OR orderNumber =2664 OR orderNumber =3789  OR orderNumber =4071 OR orderNumber =5109 
OR orderNumber =5321 OR orderNumber =5636 OR orderNumber =6201  OR orderNumber =7461 OR orderNumber =7714

--81
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 81) WHERE
   orderNumber =1340 OR orderNumber =2881 OR orderNumber =7827  OR orderNumber =7861

--80
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 80) WHERE
   orderNumber =2283 OR orderNumber =3077 OR orderNumber =3216  OR orderNumber =3492 OR orderNumber =5429 
OR orderNumber =5796 OR orderNumber =6644

--78
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 78) WHERE
   orderNumber =1461 OR orderNumber =2067 OR orderNumber =2404  OR orderNumber =2781 OR orderNumber =4037 
OR orderNumber =4823 OR orderNumber =4940 OR orderNumber =7890

--77
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 77) WHERE
   orderNumber =1283 OR orderNumber =3888 OR orderNumber =5273  OR orderNumber =5435 OR orderNumber =7475 
OR orderNumber =7497

--76
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 76) WHERE
   orderNumber =1280 OR orderNumber =5261 OR orderNumber =5464  OR orderNumber =6406

--75
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 75) WHERE
   orderNumber =3567 OR orderNumber =4954

--74
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 74) WHERE
   orderNumber =1330 OR orderNumber =1729 OR orderNumber =2707  OR orderNumber =4010 OR orderNumber =6928 
OR orderNumber =7151

--73
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 73) WHERE
   orderNumber =2495 OR orderNumber =2986 OR orderNumber =4345  OR orderNumber =5772 OR orderNumber =6016 
OR orderNumber =7701

--72
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 72) WHERE
   orderNumber =2769 OR orderNumber =4292 OR orderNumber =5072  OR orderNumber =6108 OR orderNumber =7061

--71
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 71) WHERE
   orderNumber =4047 OR orderNumber =4131 OR orderNumber =4862  OR orderNumber =5560 OR orderNumber =6421 
OR orderNumber =7256 OR orderNumber =7291

--70
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 70) WHERE
   orderNumber =2129 OR orderNumber =2370 OR orderNumber =4621  OR orderNumber =4774 OR orderNumber =4809 
OR orderNumber =5013

--69
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 69) WHERE
   orderNumber =1747 OR orderNumber =2547 OR orderNumber =3843  OR orderNumber =4860 OR orderNumber =5080 
OR orderNumber =6580 OR orderNumber =7874

--68
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 68) WHERE
   orderNumber =1269 OR orderNumber =1890 OR orderNumber =2731  OR orderNumber =3283 OR orderNumber =6025 
OR orderNumber =6387 OR orderNumber =7518

--67
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 67) WHERE
   orderNumber =1418 OR orderNumber =2714 OR orderNumber =3161  OR orderNumber =3200 OR orderNumber =4326 
OR orderNumber =4413 OR orderNumber =4788 OR orderNumber =5140  OR orderNumber =6359 OR orderNumber =6591

--66
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 66) WHERE
   orderNumber =2249 OR orderNumber =3176 OR orderNumber =4169  OR orderNumber =5344 OR orderNumber =7634

--65
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 65) WHERE
   orderNumber =1731 OR orderNumber =2002 OR orderNumber =2042  OR orderNumber =3707 OR orderNumber =5034 
OR orderNumber =5383 OR orderNumber =5407 OR orderNumber =6305  OR orderNumber =6574 OR orderNumber =6878

--64
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 64) WHERE
   orderNumber =1665 OR orderNumber =1839 OR orderNumber =2762  OR orderNumber =5358 OR orderNumber =5449 
OR orderNumber =6678 OR orderNumber =7520

--63
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 63) WHERE
   orderNumber =3350 OR orderNumber =4455 OR orderNumber =5862  OR orderNumber =7502

--62
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 62) WHERE
   orderNumber =2381 OR orderNumber =2698 OR orderNumber =3259  OR orderNumber =4406 OR orderNumber =5686 
OR orderNumber =6608

--60
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 60) WHERE
   orderNumber =1366 OR orderNumber =1772 OR orderNumber =3074  OR orderNumber =3359 OR orderNumber =3445 
OR orderNumber =4790 OR orderNumber =5393 OR orderNumber =7720

--58
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 58) WHERE
   orderNumber =1321 OR orderNumber =2573 OR orderNumber =5971  OR orderNumber =6178 OR orderNumber =7024 
OR orderNumber =7197 OR orderNumber =7323 OR orderNumber =7671  OR orderNumber =7704

--57
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 57) WHERE
   orderNumber =1262 OR orderNumber =2232 OR orderNumber =2400  OR orderNumber =2557 OR orderNumber =3968 
OR orderNumber =4449 OR orderNumber =6295

--56
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 56) WHERE
   orderNumber =3136 OR orderNumber =3430 OR orderNumber =3538  OR orderNumber =4115 OR orderNumber =4840 
OR orderNumber =7278 OR orderNumber =7674

--55
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 55) WHERE
   orderNumber =1905 OR orderNumber =2571 OR orderNumber =2855  OR orderNumber =4255 OR orderNumber =4469 
OR orderNumber =4805 OR orderNumber =5194 OR orderNumber =5291  OR orderNumber =6087 OR orderNumber =6719
OR orderNumber =6759

--54
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 54) WHERE
   orderNumber =1408 OR orderNumber =2421 OR orderNumber =4572  OR orderNumber =5018 OR orderNumber =7843

--53
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 53) WHERE
   orderNumber =1335 OR orderNumber =1504 OR orderNumber =2285  OR orderNumber =4816 OR orderNumber =5518 
OR orderNumber =7007

--52
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 52) WHERE
   orderNumber =1428 OR orderNumber =1889 OR orderNumber =3647  OR orderNumber =3678 OR orderNumber =4030 
OR orderNumber =5082

--51
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 51) WHERE
   orderNumber =2490 OR orderNumber =4293 OR orderNumber =4943  OR orderNumber =5059 OR orderNumber =5997 
OR orderNumber =6165 OR orderNumber =6455 OR orderNumber =7530

						--50
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 50)
WHERE orderNumber =1713 OR orderNumber =2294 OR orderNumber =2697  OR orderNumber =2880 OR orderNumber =2915 OR
orderNumber =4151 OR orderNumber =5438 OR orderNumber =6400  OR orderNumber =6976


						--48
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 48)
WHERE orderNumber =1554 OR orderNumber =1589 OR orderNumber =3037  OR orderNumber =6183 OR orderNumber =6820 OR
orderNumber =7137

			--47
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 47)
WHERE orderNumber =1897 OR orderNumber =2931 

			--46
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 46)
WHERE orderNumber =2237 OR orderNumber =4348 OR orderNumber =4498  OR orderNumber =6423 OR orderNumber =6941 OR
orderNumber =7014


			--45
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 45)
WHERE orderNumber =1911 OR orderNumber =1933 OR orderNumber =2724  OR orderNumber =2814 OR orderNumber =7734


			--44
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 44)
WHERE orderNumber =1860 OR orderNumber =2792

			--41
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 41)
WHERE orderNumber =1942 OR orderNumber =2408 OR orderNumber =3002  OR orderNumber =6636 OR orderNumber =6683 OR
orderNumber =6707 OR orderNumber =7103


			--40
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 40)
WHERE orderNumber =3204 OR orderNumber =4376

			--39
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 39)
WHERE orderNumber =1624 OR orderNumber =5098 OR orderNumber =6040  OR orderNumber =6287 OR orderNumber =6729



			--38
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 38)
WHERE orderNumber =3290 OR orderNumber =4388 OR orderNumber =6079  OR orderNumber =6270 OR orderNumber =7772


			--37
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 37)
WHERE orderNumber =1603 OR orderNumber =2553 OR orderNumber =2864  OR orderNumber =3072 OR orderNumber =3333 OR
orderNumber =5954 OR orderNumber =6142 OR orderNumber =6344  OR orderNumber =7812


			--35
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 35)
WHERE orderNumber =1250 OR orderNumber =1892 OR orderNumber =4113  OR orderNumber =6754


			--34
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 34)
WHERE orderNumber =2038 OR orderNumber =2111 OR orderNumber =4460  OR orderNumber =4969



			--33
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 33)
WHERE orderNumber =4079 OR orderNumber =4871 OR orderNumber =5831  OR orderNumber =6336 OR orderNumber =7189 OR
orderNumber =7636

			--32
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 32)
WHERE orderNumber =6195 OR orderNumber =6578 OR orderNumber =7001  OR orderNumber =7142 OR orderNumber =7367 OR
orderNumber =7849 OR orderNumber =7868



			--30
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 30)
WHERE orderNumber =2391 OR orderNumber =5178 OR orderNumber =5743  OR orderNumber =5747 OR orderNumber =6505 OR
orderNumber =7194


			--29
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 29)
WHERE orderNumber =3146 OR orderNumber =3303 OR orderNumber =3762  OR orderNumber =5416 OR orderNumber =6479 OR
orderNumber =7162


			--28
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 28)
WHERE orderNumber =1343 OR orderNumber =1598 OR orderNumber =2233  OR orderNumber =3767 OR orderNumber =4032 OR
orderNumber =6952


			--27
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 27)
WHERE orderNumber =4140 OR orderNumber =4731 OR orderNumber =6249  OR orderNumber =7143 OR orderNumber =7369 OR
orderNumber =7805


			--26
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 26)
WHERE orderNumber =2129 OR orderNumber =2499 OR orderNumber =4179  OR orderNumber =5397 OR orderNumber =5423 OR
orderNumber =6755 OR orderNumber =6837 OR orderNumber =7202


			--25
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 25)
WHERE orderNumber =1412 OR orderNumber =1576 OR orderNumber =2951  OR orderNumber =3571



			--24
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 24)
WHERE orderNumber =1420 OR orderNumber =1715 OR orderNumber =1830  OR orderNumber =1854 OR orderNumber =3895 OR
orderNumber =5497 OR orderNumber =5694 OR orderNumber =7608 



			--22
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 22)
WHERE orderNumber =2858 OR orderNumber =3270 OR orderNumber =4878  OR orderNumber =5318 OR orderNumber =5896 OR
orderNumber =5936 OR orderNumber =6794 OR orderNumber =7322




			--21
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 21)
WHERE orderNumber =1613 OR orderNumber =3810 OR orderNumber =7216



			--20
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 20)
WHERE orderNumber =1528 OR orderNumber =3485 OR orderNumber =5107  OR orderNumber =5159 OR orderNumber =5863 OR
orderNumber =6375 OR orderNumber =7354 OR orderNumber =7386


			--16
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 16)
WHERE orderNumber =2120 OR orderNumber =3071 OR orderNumber =6936  OR orderNumber =7373



			--14
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 14)
WHERE orderNumber =1914 OR orderNumber =2914 OR orderNumber =5501  OR orderNumber =6395 OR orderNumber =6718



			--13
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 13)
WHERE orderNumber =2066 OR orderNumber =3517 OR orderNumber =3664  OR orderNumber =5062 OR orderNumber =5908 OR
orderNumber =6957 OR orderNumber =7492 OR orderNumber=1885


			--12
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 12)
WHERE orderNumber =2157 OR orderNumber =2824 OR orderNumber =2877  OR orderNumber =3689 OR orderNumber =5260 OR
orderNumber =5824 OR orderNumber =5994 OR orderNumber =7116



			--11
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 11)
WHERE orderNumber =2860 OR orderNumber =3953 OR orderNumber =4791  OR orderNumber =5695 OR orderNumber =7175


			--9
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 9)
WHERE orderNumber =2112 OR orderNumber =3467 OR orderNumber =5333  OR orderNumber =7199 OR orderNumber =7454


			--8
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 8)
WHERE orderNumber =2337 OR orderNumber =2694 OR orderNumber =3436  OR orderNumber =3982 OR orderNumber =4911 OR
orderNumber =5615 OR orderNumber =5774 OR orderNumber =6727  OR orderNumber =7516

			--7
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 7)
WHERE orderNumber =1605 OR orderNumber =4052 OR orderNumber =5561  OR orderNumber =6115 OR orderNumber =7034

--5
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 5)
WHERE orderNumber =2037 OR orderNumber =4399 OR orderNumber =5471


--4
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 4)
WHERE orderNumber =1377 OR orderNumber =1629 OR orderNumber =2109  OR orderNumber =3564 OR orderNumber =3604 OR
orderNumber =4260 OR orderNumber =5129

--3
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 3)
WHERE orderNumber =1974 OR orderNumber =2839 OR orderNumber =2942  OR orderNumber =3152 OR orderNumber =7009


--1
UPDATE Payment SET creditcardNumber= (SELECT cardNumber FROM CreditCard WHERE userid= 1)
WHERE orderNumber =1406 OR orderNumber =1471 OR orderNumber =2136  OR orderNumber =3219 OR orderNumber =3256 OR
orderNumber =3406 OR orderNumber =3522 OR orderNumber =3858  OR orderNumber =4777 OR orderNumber =6730
OR orderNumber =6811


--Issue is that Credit card number of Payment and Credit Card Tables are not matching...!! (RESOLVED)
SELECT orderNumber FROM Orders  WHERE userid = 3
SELECT creditcardNumber FROM Payment WHERE orderNumber = 1974
SELECT cardNumber FROM CreditCard WHERE userid = 3








--Set Inventory + Products Prices

DECLARE @Counter INT, @price_1 INT, @price_2 INT
SET @price_1 = 100
SET @price_2 = 200
SET @Counter=1
WHILE ( @Counter <= 79)
BEGIN
    UPDATE Inventory_Product SET price = @price_1 WHERE pid = @Counter
    UPDATE Prod_Price SET price = @price_2 WHERE pid = @Counter
    SET @Counter  = @Counter  + 1
    SET @price_1  = @price_1  + 1
    SET @price_2  = @price_2  + 1
END


SELECT * FROM Inventory_Product
SELECT * FROM Prod_Price







