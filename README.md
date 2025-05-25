# PostgreSQL

- 1.What is PostgreSQL?

```Bash
 PostgreSQL একটা শক্তিশালী, ফ্রি ও ওপেন-সোর্স ডেটাবেস সফটওয়্যার যেটা দিয়ে আমরা বিভিন্ন ধরনের ডেটা সংরক্ষণ, 
 খোঁজা, আপডেট করা, বা মুছতে পারি। আমি একটা দোকান চালাই । আমার  কাছে কাস্টমারের নাম, অর্ডার, দাম 
 এসব তথ্য রাখতে হয়। আমি চাইছো সব কিছু কম্পিউটারে সুন্দরভাবে রাখবে — যাতে পরে সহজে খুঁজে পাওয়া যায়
 বা হিসাব করা যায়। 
 ```

- 2.What is the purpose of a database schema in PostgreSQL?

```Bash
 Schema হল ডেটাবেসের ভিতরে ডেটা রাখার আলাদা আলাদা খোপ বা ঘর। 
 Purpose of a database schema in PostgreSQL হল ডেটাবেসের ভিতরে আলাদা আলাদা 
 ঘর বা বিভাগ যাতে ডেটা গুছিয়ে রাখা যায়, নিরাপদ রাখা যায়, আর একসাথে অনেক কিছু 
 ম্যানেজ করা যায়।

 ```

- Explain the Primary Key and Foreign Key concepts in PostgreSQL.

```Bash
 Primary Key: Primary Key হল টেবিলের এমন একটি কলাম বা একাধিক কলাম,
  যেটার মাধ্যমে প্রতিটি রেকর্ড বা লাইনকে অনন্য (unique) ভাবে চেনা যায়।
  
 Foreign Key: Foreign Key হল এমন একটি কলাম, যেটা অন্য টেবিলের 
 Primary Key-র সাথে সম্পর্কিত।
 ```

- 3.Explain the purpose of the WHERE clause in a SELECT statement.

 ```Bash
 WHERE clause: WHERE clause ব্যবহার করা হয় যখন আমি ডেটাবেস থেকে 
 শুধু নির্দিষ্ট শর্তে মিল থাকা ডেটা বের করতে চাই।

 ```

- 4.How can you modify data using UPDATE statements?.

```Bash
 UPDATE স্টেটমেন্ট দিয়ে টেবিলের ভিতরে থাকা ডেটা নতুন করে লেখা বা সংশোধন করা যায়।
 শর্ত WHERE দিয়ে ঠিক করা হয়, কোন রেকর্ডগুলো আপডেট হবে। 
 যেমন : UPDATE customers SET নাম = UPPER(নাম);
 ```

- 5.Explain the GROUP BY clause and its role in aggregation operations.

```Bash

 GROUP BY ব্যবহার করা হয় ডেটাগুলিকে একটা নির্দিষ্ট কলামের ভিত্তিতে দল (group) করে হিসাব করার জন্য। 
 যেমন SELECT পণ্যের_নাম, SUM(পরিমাণ) AS মোট_বিক্রি FROM বিক্রি GROUP BY পণ্যের_নাম;
```
