------Adding to menu----
insert into menu_items
values(1, 'Sandwich', 99.00, 'Yes',  '2017-03-15', 'Main Course', 'Yes'),
(2, 'Paneer', 129.00, 'Yes',  '2017-12-23', 'Main Course', 'No'),
(3, 'Dal', 149.00, 'Yes',  '2017-08-21', 'Main Course', 'No'),
(4, 'French Fries', 57.00, 'No',  '2017-07-02', 'Starters', 'Yes'),
(5, 'Cake', 32.00, 'Yes',  '2022-11-02', 'Dessert', 'Yes');

----Displaying menu items to admin----
select * from menu_items;
      
-----Displaying menu items to customer-------
select menu_name,menu_price,menu_category,menu_free_delivery from menu_items
where menu_active='Yes' and menu_dateoflaunch <= current_date();


------Updating menu items-------
update menu_items
set 
menu_price = 97.00,
menu_date = '2022-04-27'
menu_name = 'Sandwich' where menu_id=1;


----adding user id and user names----
insert into user
values
(1, 'Ritika Assudani'),
(2, 'Akul Aggarwal');

select * from user;

----Add to cart-----
insert into cart (ct_userid,ct_menuid)
values(2,1)(2,2),(2,5),(2,4);

-----show cart------
select * from cart;


----view cart-----
select menu_name,menu_free_delivery,menu_price
from menu_items
inner join cart on ct_menuid=menu_id
where ct_userid=2;


---Remove from cart----
delete from cart where ct_userid=2 and ct_menuid=1 limit 1;

---view cart after removing----
select menu_name,menu_free_delivery,menu_price
from menu_items
inner join cart on ct_menuid=menu_id
where ct_userid=2;


----show total-----
select sum(menu_price) as Total
from menu_item
inner join cart on ct_menuid=menu_id
where ct_userid=2;