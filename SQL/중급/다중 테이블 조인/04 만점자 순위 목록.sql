
SELECT 
    HACKERS.HACKER_ID,
    HACKERS.NAME
FROM 
    HACKERS
JOIN
    SUBMISSIONS 
    ON SUBMISSIONS.HACKER_ID = HACKERS.HACKER_ID
JOIN
    CHALLENGES
    ON CHALLENGES.CHALLENGE_ID = SUBMISSIONS.CHALLENGE_ID
JOIN
    DIFFICULTY
    ON DIFFICULTY.DIFFICULTY_LEVEL = CHALLENGES.DIFFICULTY_LEVEL
WHERE
    DIFFICULTY.SCORE = SUBMISSIONS.SCORE
GROUP BY
    HACKERS.HACKER_ID,
    HACKERS.NAME
HAVING
    COUNT(HACKERS.HACKER_ID) >= 2
ORDER BY
    COUNT(HACKERS.HACKER_ID) DESC,
    HACKERS.HACKER_ID ASC;
    
