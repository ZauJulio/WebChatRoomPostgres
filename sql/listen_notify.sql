CREATE OR REPLACE FUNCTION public.notify_testevent()
  RETURNS trigger AS $$
  BEGIN
    PERFORM pg_notify('testevent', row_to_json(NEW)::text);
    RETURN NEW;
  END;
  $$ LANGUAGE plpgsql;

CREATE TRIGGER update_test_trigger
AFTER INSERT OR UPDATE
ON message
FOR EACH ROW
EXECUTE PROCEDURE public.notify_testevent();

