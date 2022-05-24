CREATE FUNCTION adc_passageiro()
RETURNS trigger AS $$

BEGIN
    UPDATE voo
    SET num_passageiros = num_passageiros + 1;
    WHERE voo.codigo = new.voo;
END;

$$ LANGUAGE plpgsql;

CREATE trigger update_adc_passageiros
AFTER INSERT ON cliente_voo
for each ROW EXECUTE FUNCTION adc_passageiro();
