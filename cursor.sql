DECLARE

c_id custm.id%type;

c_name custm.name%type;

c_addr custm.address%type;

CURSOR c_custm is

SELECT id, name, address FROM custm;

BEGIN

OPEN c_custm;

LOOP

FETCH c_custm into c_id, c_name, c_addr;

EXIT WHEN c_custm%notfound;

dbms_output.put_line(c_id || ' ' || c_name || ' ' || c_addr);

END LOOP;

CLOSE c_custm;
END;/