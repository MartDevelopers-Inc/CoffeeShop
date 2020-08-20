<?php
//1. Customers
$query = "SELECT COUNT(*) FROM `coffee_shop_customers` ";
$stmt = $mysqli->prepare($query);
$stmt->execute();
$stmt->bind_result($customers);
$stmt->fetch();
$stmt->close();

//2. Orders
$query = "SELECT COUNT(*) FROM `coffee_shop_orders` ";
$stmt = $mysqli->prepare($query);
$stmt->execute();
$stmt->bind_result($orders);
$stmt->fetch();
$stmt->close();

//3. Orders
$query = "SELECT COUNT(*) FROM `coffee_shop_products` ";
$stmt = $mysqli->prepare($query);
$stmt->execute();
$stmt->bind_result($products);
$stmt->fetch();
$stmt->close();

//4.Sales
$query = "SELECT SUM(pay_amt) FROM `coffee_shop_payments` ";
$stmt = $mysqli->prepare($query);
$stmt->execute();
$stmt->bind_result($sales);
$stmt->fetch();
$stmt->close();
