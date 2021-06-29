WITH ranked_messages AS (
  SELECT m.*, ROW_NUMBER() OVER (PARTITION BY name ORDER BY id DESC) AS rn
  FROM messages AS m
)
SELECT * FROM ranked_messages WHERE rn = 1;