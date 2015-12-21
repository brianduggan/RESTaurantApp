# RESTaurant App

###### RESTaurant App is a basic point of sale system for use in restaurants. It is optimized for mobile usage, but can also be viewed on a desktop.

Live version of the site can be viewed here: https://whispering-brook-4229.herokuapp.com/


### User Stories
As a manager of a restaurant, I have 3 types of users, Chefs, Servers, and Admins. Each type of employee has separate abilities available to them.


Chefs primarily live in the kitchen and can see the orders that are coming to them.

![kitchen view food](/app/assets/images/chefview.png)

Servers can see this view as well, but they can also create tables of guests (called parties), and assign orders to them for preparation in the kitchen. Servers can only view and see the parties that are assigned to them.
![table view](/app/assets/images/tables.png)

While focusing on a particular party, a server may add foods, delete foods, type notes...
![adding orders](/app/assets/images/orders.png)
...and see the total.
![totals](/app/assets/images/total.png)


A user may then select generate the receipt which they could then deliver to the customer's table.
![adding orders](/app/assets/images/receipt.png)

An admin can see all of the functions available to chefs and servers. Additionally they may see all parties in the restaurant and have access to a menu administration mode.
![admin and all tables view](/app/assets/images/admin.png)


---

### ERD
The following Entity Relationship Diagram was used in my planning stage of the app.
![erd](/app/assets/images/erd.png)

---

### Wireframes
I created the below wireframes while planning the design of my page.
![wireframes](/app/assets/images/wireframe.png)

---
### Technologies Used
- Ruby on Rails
- jQuery/Javascript
- PostgreSQL
- Twitter Bootstrap
