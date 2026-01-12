SELECT DISTINCT
  a.user_id AS user_id_a,
  c.user_id AS user_id_c,
  a.name,
  c.revenue 
FROM decisive-lambda-483611-c3.relacionamento.acessos a
LEFT JOIN decisive-lambda-483611-c3.relacionamento.compras c ON a.user_id = c.user_id;


SELECT DISTINCT
  a.user_id AS user_id_a,
  c.user_id AS user_id_c,
  a.name
FROM decisive-lambda-483611-c3.relacionamento.acessos a
LEFT JOIN decisive-lambda-483611-c3.relacionamento.compras c ON a.user_id = c.user_id
WHERE c.user_id IS NULL;



SELECT DISTINCT
  a.user_id AS user_id_a,
  c.user_id AS user_id_c,
  c.name,
  c.revenue
FROM decisive-lambda-483611-c3.relacionamento.acessos a
RIGHT JOIN decisive-lambda-483611-c3.relacionamento.compras c ON a.user_id = c.user_id;



SELECT DISTINCT
  a.user_id AS user_id_a,
  c.user_id AS user_id_c,
  c.name,
  c.revenue
FROM decisive-lambda-483611-c3.relacionamento.acessos a
RIGHT JOIN decisive-lambda-483611-c3.relacionamento.compras c ON a.user_id = c.user_id
WHERE a.user_id IS NULL;



SELECT DISTINCT
  a.user_id AS user_id_a,
  c.user_id AS user_id_c,
  c.name,
  a.name,
  c.revenue
FROM decisive-lambda-483611-c3.relacionamento.acessos a
FULL JOIN decisive-lambda-483611-c3.relacionamento.compras c ON a.user_id = c.user_id
WHERE a.user_id IS NULL OR c.user_id IS NULL

