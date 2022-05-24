CREATE FUNCTION adc_voo()
RETURNS trigger AS $$

BEGIN
    UPDATE piloto SET num_voos = num_voos + 1
    WHERE codigo = new.piloto;
    RETURN new;
END;

$$ LANGUAGE plpgsql;

CREATE trigger cria_adc_voo
    AFTER INSERT ON voo
    for each ROW EXECUTE FUNCTION adc_voo();