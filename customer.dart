class Customer {
  int id;
  String customerName;
  int age;
  String address;
  List<Order> orders;
  Customer({this.id, this.customerName, this.age, this.address, this.orders});
  @override
  String toString() {
    return 'Customer{ id: $id, customerName: $customerName, age: $age, address: $address}';
  }
}

class Order {
  int orderID;
  double orderTotal;
  DateTime orderDate;

  Order({this.orderID, this.orderTotal, this.orderDate});
  @override
  String toString() {
    return 'order{ID: $orderID, TotalOrder: $orderTotal, orderDate: $orderDate}';
  }
}

var customer = <Customer>[
  Customer(
    id: 10,
    customerName: 'Rehman',
    age: 21,
    address: 'Silicon Valley',
    orders: <Order>[
      Order(
          orderID: 200, orderTotal: 3900.0, orderDate: DateTime(2020, 09, 20)),
      Order(
        orderID: 300,
        orderTotal: 100.4,
        orderDate: DateTime(2014, 3, 23),
      ),
      Order(
        orderID: 199,
        orderTotal: 400.0,
        orderDate: DateTime(2000, 11, 09),
      ),
    ],
  ),
  Customer(
      id: 180991,
      customerName: 'Adil khan',
      age: 20,
      address: 'NewYork',
      orders: <Order>[
        Order(
          orderID: 1486,
          orderTotal: 1000.5,
          orderDate: DateTime(2015, 03, 14),
        ),
        Order(
          orderID: 1487,
          orderTotal: 10000.20,
          orderDate: DateTime(2013, 02, 14),
        ),
        Order(
          orderID: 1488,
          orderTotal: 11000.5,
          orderDate: DateTime(2019, 03, 14),
        ),
      ]),
];

main() {
 // Restrication Operator (where operator)
  var whereResult = customer.where((c) => c.age < 15);
  whereResult.forEach(print); // forEach loop to check all the list

  // Projection Operator (map)
  var projResult = customer.map((e) => e.address);
  projResult.forEach((print));
}
