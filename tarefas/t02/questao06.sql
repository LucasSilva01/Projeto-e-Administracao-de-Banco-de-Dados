CREATE FUNCTION soma_milha()
RETURNS trigger AS $$

BEGIN
    UPDATE milhas 
    SET quantidade = quantidade + (SELECT distancia
                                    FROM voo, cliente_voo
                                    WHERE new.voo = voo.codigo) / 10
                                    WHERE cliente = new.cliente;
                                    RETURN new;
END;

$$ LANGUAGE plpgsql;

CREATE trigger adc_milha
AFTER INSERT ON cliente_voo
    for each ROW EXECUTE FUNCTION soma_milha();