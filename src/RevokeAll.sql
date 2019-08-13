Declare
Begin
  FOR x IN (SELECT * FROM user_tables)
    LOOP
      EXECUTE IMMEDIATE 'REVOKE SELECT ON ' || x.table_name || ' FROM BRYAN';
      EXECUTE IMMEDIATE 'REVOKE INSERT ON ' || x.table_name || ' FROM BRYAN';
      EXECUTE IMMEDIATE 'REVOKE UPDATE ON ' || x.table_name || ' FROM BRYAN';
      EXECUTE IMMEDIATE 'REVOKE DELETE ON ' || x.table_name || ' FROM BRYAN';

      EXECUTE IMMEDIATE 'REVOKE SELECT ON ' || x.table_name || ' FROM YCHIN';
      EXECUTE IMMEDIATE 'REVOKE INSERT ON ' || x.table_name || ' FROM YCHIN';
      EXECUTE IMMEDIATE 'REVOKE UPDATE ON ' || x.table_name || ' FROM YCHIN';
      EXECUTE IMMEDIATE 'REVOKE DELETE ON ' || x.table_name || ' FROM YCHIN';

      EXECUTE IMMEDIATE 'REVOKE SELECT ON ' || x.table_name || ' FROM RALVAREZ';
      EXECUTE IMMEDIATE 'REVOKE INSERT ON ' || x.table_name || ' FROM RALVAREZ';
      EXECUTE IMMEDIATE 'REVOKE UPDATE ON ' || x.table_name || ' FROM RALVAREZ';
      EXECUTE IMMEDIATE 'REVOKE DELETE ON ' || x.table_name || ' FROM RALVAREZ';
END LOOP;
End;