SELECT tweet_id
FROM Tweets
WHERE LENGTH(content) > 15;

-- you can also use CHAR_LENGTH instead of LENGTH