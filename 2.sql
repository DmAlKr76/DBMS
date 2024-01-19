CREATE OR REPLACE VIEW public.v1
AS SELECT pn.nspname,
    pc.relname
   FROM pg_class pc
     JOIN pg_namespace pn ON pn.oid = pc.relnamespace
  WHERE pc.relkind = 'v'::"char" OR pc.relkind = 'm'::"char";