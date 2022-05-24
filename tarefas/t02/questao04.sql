CREATE FUNCTION card_milhagem()
RETURNS trigger AS $$

BEGIN 
    INSERT INTO milhas(cliente, quantidade)
    VALUES (new.codigo, 0);
    RETURN new;
END;

$$ LANGUAGE plpgsql;

CREATE trigger cria_card_milha
    AFTER INSERT ON cliente
    for each ROW EXECUTE FUNCTION card_milhagem();