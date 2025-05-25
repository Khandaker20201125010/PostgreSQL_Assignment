# PostgreSQL Q&A (বাংলা)

---

```text
1. What is PostgreSQL?

PostgreSQL একটা শক্তিশালী, ফ্রি ও ওপেন-সোর্স ডেটাবেস সফটওয়্যার যেটা দিয়ে আমরা বিভিন্ন ধরনের ডেটা সংরক্ষণ, খোঁজা, আপডেট করা, বা মুছতে পারি।  
উদাহরণ: আমি একটা দোকান চালাই। আমার কাছে কাস্টমারের নাম, অর্ডার, দাম এসব তথ্য রাখতে হয়। আমি চাই সব কিছু কম্পিউটারে সুন্দরভাবে রাখব — যাতে পরে সহজে খুঁজে পাওয়া যায় বা হিসাব করা যায়।

---

2. What is the purpose of a database schema in PostgreSQL?

Schema হল ডেটাবেসের ভিতরে ডেটা রাখার আলাদা আলাদা খোপ বা ঘর।  
Purpose: ডেটাবেসের ভিতরে আলাদা আলাদা ঘর বা বিভাগ যাতে ডেটা গুছিয়ে রাখা যায়, নিরাপদ রাখা যায়, আর একসাথে অনেক কিছু ম্যানেজ করা যায়।

---

3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

- Primary Key: টেবিলের এমন একটি কলাম বা একাধিক কলাম, যেটার মাধ্যমে প্রতিটি রেকর্ড বা লাইনকে অনন্য (unique) ভাবে চেনা যায়।  
- Foreign Key: এমন একটি কলাম, যেটা অন্য টেবিলের Primary Key-র সাথে সম্পর্কিত।

---

4. Explain the purpose of the WHERE clause in a SELECT statement.

WHERE clause ব্যবহার করা হয় যখন আমি ডেটাবেস থেকে শুধু নির্দিষ্ট শর্তে মিল থাকা ডেটা বের করতে চাই।

---

5. How can you modify data using UPDATE statements?

UPDATE স্টেটমেন্ট দিয়ে টেবিলের ভিতরে থাকা ডেটা নতুন করে লেখা বা সংশোধন করা যায়।  
শর্ত WHERE দিয়ে ঠিক করা হয়, কোন রেকর্ডগুলো আপডেট হবে।  
উদাহরণ:  
UPDATE customers SET নাম = UPPER(নাম);

---

6. Explain the GROUP BY clause and its role in aggregation operations.

GROUP BY ব্যবহার করা হয় ডেটাগুলিকে একটা নির্দিষ্ট কলামের ভিত্তিতে দল (group) করে হিসাব করার জন্য।  
উদাহরণ:  
SELECT পণ্যের_নাম, SUM(পরিমাণ) AS মোট_বিক্রি FROM বিক্রি GROUP BY পণ্যের_নাম;
