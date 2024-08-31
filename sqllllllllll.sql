-- 1. Select all users who are born between January 1, 2000, and December 31, 2004.
SELECT * 
FROM users 
WHERE birth_date BETWEEN '2000-01-01' AND '2004-12-31';

-- 2. Select all the posts written by the user with a user_id of 4.
SELECT * 
FROM posts 
WHERE user_id = 4;

-- 3. Select all the group names existing in the database.
SELECT group_name 
FROM groups;

-- 4. Select all the group membership requests made by the user with a user_id of 2.
SELECT * 
FROM group_membership_requests 
WHERE user_id = 2;

-- 5. Select all the friends of the user with a user_id of 2.
SELECT * 
FROM friends 
WHERE user_id_1 = 2 OR user_id_2 = 2;

-- 6. Select all the friend requests that the user with a user_id of 1 has sent. The friend request can either be accepted or not yet accepted.
SELECT * 
FROM friend_requests 
WHERE sender_id = 1;

-- 7. Select all the posts visible only for the group with a group_id of 2.
SELECT * 
FROM posts 
WHERE group_id = 2;

-- 8. Select all the group membership requests from the group with a group_id of 2 that are not yet accepted.
SELECT * 
FROM group_membership_requests 
WHERE group_id = 2 AND status != 'accepted';
