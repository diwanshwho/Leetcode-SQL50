SELECT tweet_id
FROM Tweets
WHERE CHAR_LENGTH(content) > 15;

-- you can also use LENGTH instead of CHAR_LENGTH