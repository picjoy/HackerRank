-- oracle.ver
SELECT
    hackers.hacker_id,
    hackers.name,
    SUM(max_score) AS total_score
FROM
    hackers,
    (SELECT 
        hacker_id,
        challenge_id,
        MAX(score) AS max_score
    FROM
        Submissions
    GROUP BY
        hacker_id,
        challenge_id
      ) max_scores 
where max_scores.hacker_id = hackers.hacker_id
GROUP BY
    hackers.hacker_id,
    hackers.name
HAVING
    SUM(max_score) != 0
ORDER BY
    total_score DESC,
    hacker_id;
