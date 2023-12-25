# 최상위 계층의 노드
# if(1 = (SELECT count(*) FROM table as t WHERE t.노드 = s.노드 AND t.부모노드 is null), 'Root'

# 최하위 계층의 노드 
# if(0= (SELECT count(*) FROM table as k WHERE k.노드 = s.부모노드), 'Leaf', 'Inner')

# 예시 코드 

SELECT n, if( 1= (
                  SELECT count(*)
                  FROM table as t 
                  WHERE t.노드 = s.노드 AND t.부모노드 is null), 'Root',
                  if( 0 = (SELECT count(*) FROM table as k WHERE k.노드 = s.부모노드), 'Leaf', 'Inner'))
FROM table as s
GROUP BY n;
