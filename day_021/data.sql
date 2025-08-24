-- 📘 Day 21: Transactions and ACID
-- -------------------------------
-- Context: A simple banking system managing customers and their transactions.
-- Today’s focus is on understanding **Transactions**, **Atomicity**, **Consistency**, **Isolation**, and **Durability** (ACID)
-- properties using realistic bank-related data.

-- 👇 Below is the structure and sample data for two tables:
-- 1. customers
-- 2. transactions

-- ===================================================
-- Table: customers
-- ===================================================
-- | customer_id | name             | account_type | balance   | status   | created_at  |
-- |-------------|------------------|--------------|-----------|----------|-------------|
-- | 101         | Priya Nair       | Savings      | 25000.00  | Active   | 2022-06-01  |
-- | 102         | Rajesh Mehta     | Current      | 87000.00  | Active   | 2023-01-15  |
-- | 103         | Sneha Kapoor     | Savings      | 5400.00   | Frozen   | 2021-11-30  |
-- | 104         | Arjun Reddy      | Current      | 12000.00  | Active   | 2023-03-10  |
-- | 105         | Mehul Sinha      | Savings      | 6700.00   | Active   | 2022-09-25  |
-- | 106         | Nisha D'Souza    | Current      | 156000.00 | Closed   | 2020-02-12  |

-- ===================================================
-- Table: transactions
-- ===================================================
-- | txn_id | customer_id | txn_type | amount   | txn_date   | status     | remarks               |
-- |--------|-------------|----------|----------|------------|------------|------------------------|
-- | T001   | 101         | Deposit  | 10000.00 | 2023-09-01 | Success    | Salary Credit          |
-- | T002   | 101         | Withdraw | 5000.00  | 2023-09-02 | Success    | ATM Withdrawal         |
-- | T003   | 102         | Deposit  | 30000.00 | 2023-09-01 | Success    | Business Payment       |
-- | T004   | 103         | Withdraw | 1500.00  | 2023-09-03 | Failed     | Card Blocked           |
-- | T005   | 105         | Withdraw | 700.00   | 2023-09-04 | Success    | Online Shopping        |
-- | T006   | 104         | Deposit  | 5000.00  | 2023-09-05 | Success    | UPI Transfer           |
-- | T007   | 106         | Deposit  | 8000.00  | 2023-09-06 | Failed     | Account Closed         |
-- | T008   | 105         | Withdraw | 1200.00  | 2023-09-07 | Success    | Utility Bill Payment   |
-- | T009   | 102         | Withdraw | 2000.00  | 2023-09-08 | Success    | POS Transaction        |
-- | T010   | 103         | Deposit  | 1000.00  | 2023-09-09 | Success    | Cheque Deposit         |

-- 📝 Instructions:
-- Write SQL statements manually for:
-- - Creating the above tables (`CREATE TABLE`)
-- - Inserting the above data (`INSERT INTO`)
-- - Practicing transaction blocks (`BEGIN`, `COMMIT`, `ROLLBACK`)
-- - Exploring ACID concepts through questions

-- 📚 PRACTICE QUESTIONS (35):
-- ---------------------------

-- 🔹 Understanding Transactions (Q1–Q10)
-- 1. Begin a transaction to deposit ₹5000 into customer_id 101 and update the balance.
-- 2. Start a transaction to withdraw ₹3000 from customer_id 102. Ensure balance is adjusted and transaction is logged.
-- 3. Write a transaction block that transfers ₹4000 from customer_id 104 to customer_id 105.
-- 4. Demonstrate a rollback when withdrawing ₹6000 from customer_id 105 causes balance to go negative.
-- 5. Begin a transaction that inserts a new deposit for customer_id 103 and commits it.
-- 6. Simulate a failed transaction where money is debited but the insert into the `transactions` table fails.
-- 7. Start a transaction where two inserts are made into the `transactions` table. Rollback after the second.
-- 8. Demonstrate how you would ensure atomicity in a transfer from one account to another.
-- 9. Perform a transaction that updates status to 'Frozen' if a withdrawal fails for any reason.
-- 10. Begin a transaction to close customer_id 106's account and mark all their future transactions as failed.

-- 🔹 Atomicity & Consistency (Q11–Q20)
-- 11. What would happen if a transaction is only partially executed and committed? Explain with a rollback scenario.
-- 12. Write a transaction where a customer is created and a deposit is made. Ensure both succeed or none.
-- 13. Simulate a failed consistency check: deposit is recorded but balance isn’t updated. What ACID property is violated?
-- 14. Write a transaction to deduct ₹700 from customer_id 101 only if their balance is greater than ₹5000.
-- 15. How can you ensure consistent state during concurrent withdrawals from customer_id 102?
-- 16. Write a transaction that changes a customer's account_type to 'Premium' only if their balance exceeds ₹50,000.
-- 17. In a transaction block, what happens if the first statement succeeds but the second throws an error?
-- 18. Create a transaction that updates multiple customers’ status to 'Frozen' in one go. What happens if one update fails?
-- 19. Demonstrate how invalid data types in a transaction can affect consistency.
-- 20. Why is COMMIT not recommended before verifying all operations in a transaction?

-- 🔹 Isolation & Concurrency (Q21–Q28)
-- 21. Explain how dirty reads can occur when two users access the same account at the same time.
-- 22. Create a scenario where two users try to withdraw from the same account simultaneously.
-- 23. What is a phantom read? How can it affect the `transactions` table?
-- 24. Demonstrate a transaction with isolation that prevents another user from reading uncommitted changes.
-- 25. Discuss how locking can help maintain isolation in concurrent environments.
-- 26. Why might isolation level 'READ UNCOMMITTED' cause problems in banking systems?
-- 27. How can you simulate deadlock with transactions in this dataset?
-- 28. Explain how two transactions trying to update the same customer balance can cause conflict. How to avoid it?

-- 🔹 Durability & Error Recovery (Q29–Q35)
-- 29. Explain durability with an example where power fails after COMMIT.
-- 30. What happens if COMMIT is executed but the system crashes immediately? Will the changes persist?
-- 31. Demonstrate that a successful transaction remains permanent even after a crash.
-- 32. What role does the database log play in ensuring durability?
-- 33. How would you recover from a failed transaction that corrupted balance data?
-- 34. Explain how durability ensures that transaction T003 is never lost even during a server restart.
-- 35. Why is ROLLBACK important for ensuring correct durable data?

-- ✅ End of Day 21 Practice
-- Understand how ACID principles protect your data from loss, inconsistency, and errors.
-- Tomorrow’s topic: **Day 22 – Review + Practice Set** 🎯
