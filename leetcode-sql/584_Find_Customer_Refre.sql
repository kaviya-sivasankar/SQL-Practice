-- LeetCode 584: Find Customer Refree
-- https://leetcode.com/problems/find-customer-referee/

# Write your MySQL query statement below

SELECT name FROM Customer 
WHERE referee_id !=2 OR  referee_id is null;