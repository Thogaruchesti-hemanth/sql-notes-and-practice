# 🛠️ Day 20: `Stored Procedures` — Automating SQL Logic

Welcome to **Day 20** of my daily SQL learning journey!  
Today’s focus was on **Stored Procedures**, a powerful feature in SQL that allows encapsulating complex business logic within the database itself.

Stored procedures help improve performance, security, reusability, and maintainability by allowing you to define a block of SQL statements that can be executed repeatedly with or without parameters.

---

## 🧠 Main Topics Covered

- 🧰 What are Stored Procedures and why use them?
- 📝 Syntax for creating, calling, and modifying stored procedures
- 🔄 Using input (`IN`), output (`OUT`), and input-output (`INOUT`) parameters
- 🧮 Using control flow statements like `IF`, `CASE`, `LOOP`, `WHILE`, `REPEAT`
- 🔐 Benefits of stored procedures in terms of security and abstraction
- 🧼 Error handling and debugging tips inside procedures
- 📌 Best practices when designing stored procedures

---

## 📖 What I Learned

### 🔹 What is a Stored Procedure?

A **stored procedure** is a precompiled SQL program stored in the database that can be executed with a simple `CALL` statement.

**Basic Syntax:**

```sql
DELIMITER //
CREATE PROCEDURE procedure_name()
BEGIN
   -- SQL statements
END //
DELIMITER ;
````

**Calling the procedure:**

```sql
CALL procedure_name();
```

---

### 🔹 Parameterized Stored Procedures

You can pass values using `IN`, return values using `OUT`, or do both with `INOUT`.

```sql
CREATE PROCEDURE get_employee_salary(IN emp_id INT, OUT emp_salary DECIMAL(10,2))
BEGIN
   SELECT salary INTO emp_salary
   FROM employees
   WHERE id = emp_id;
END;
```

**Call with output:**

```sql
CALL get_employee_salary(101, @salary);
SELECT @salary;
```

---

### 🔹 Logic and Control Structures

Stored procedures can include logic:

```sql
IF condition THEN
   -- statements
ELSE
   -- statements
END IF;
```

They also support loops:

```sql
WHILE condition DO
   -- statements
END WHILE;
```

---

### ✅ Benefits of Stored Procedures

* 🔒 **Security**: Prevents SQL injection by separating code from input.
* 🚀 **Performance**: Precompiled and cached by the database engine.
* 🔁 **Reusability**: Write once, use many times.
* 🧹 **Maintainability**: Centralizes logic within the DB for consistency.

---

## ❓ Example Practice Questions

Here are some procedure-based challenges I worked on today:

1. 🧾 Create a stored procedure to calculate total sales for a given month.
2. 📋 Write a stored procedure to fetch all employees under a given department.
3. 🛒 Build a stored procedure that inserts a new order and deducts product quantity (stock) accordingly.

These examples simulate business logic automation commonly required in real-world applications like e-commerce, HR, and finance systems.

---

## 📂 Files Included

* `data.sql` – Contains:

  * Table schema definitions (e.g., employees, orders, products)
  * Sample data insertion
  * Practice problems written as comments

* `queries.sql` – Contains:

  * Full stored procedure implementations
  * Execution examples with `CALL`
  * Inline explanations and suggestions for optimization

---

## 📝 Summary

Today’s exploration of **Stored Procedures** strengthened my understanding of embedding logic into the database layer. Instead of writing repetitive SQL in the application, procedures allow centralizing and optimizing logic directly inside the DB server — enhancing performance and simplifying maintenance.

💼 Real-world use cases include:

* Order processing systems that handle multiple steps in one call
* Payroll systems calculating salaries with conditions
* Analytics tools aggregating data with re-usable logic
* Inventory management systems automating stock updates

---

📅 Up next: **Day 21: Transactions and ACID** — exploring how SQL ensures data reliability, consistency, and safety through transactional operations and the ACID principles.

Stay tuned as I dive deeper into data integrity with transactions! 🧾🔐

Happy querying! 💻🎯
