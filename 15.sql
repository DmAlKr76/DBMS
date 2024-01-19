SELECT count(body)
FROM public.articles
WHERE to_tsvector('english', body) @@ to_tsquery('english', 'Ryanair');