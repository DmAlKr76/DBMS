SELECT heading, ts_rank(to_tsvector('english', body), to_tsquery('english', 'airline')) rank
FROM public.articles
order by rank desc