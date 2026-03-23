// OP1: insertMany() — insert all 3 documents
db.products.insertMany([
  {
    product_id: "P001",
    name: "Laptop",
    category: "Electronics",
    price: 55000
  },
  {
    product_id: "P002",
    name: "T-Shirt",
    category: "Clothing",
    price: 1200
  },
  {
    product_id: "P003",
    name: "Milk",
    category: "Groceries",
    price: 60,
    expiry_date: "2024-12-31"
  }
]);

// OP2: find Electronics with price > 20000
db.products.find({
  category: "Electronics",
  price: { $gt: 20000 }
});

// OP3: find groceries expiring before 2025-01-01
db.products.find({
  category: "Groceries",
  expiry_date: { $lt: "2025-01-01" }
});

// OP4: updateOne — add discount_percent
db.products.updateOne(
  { product_id: "P001" },
  { $set: { discount_percent: 10 } }
);

// OP5: create index on category
db.products.createIndex({ category: 1 });