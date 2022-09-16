DELIMITER //
CREATE PROCEDURE insere_dados()
BEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION SET erro_sql = TRUE;
START TRANSACTION;
	INSERT INTO dados_livro (nome, isbn13, preco) VALUES ('História do Brasil', '1234567890123', 78.90);
    INSERT INTO dados_livro (nome, isbn13, preco) VALUES ('Química Experimental', '9876543210987', 85.79);
    INSERT INTO dados_livro (nome, isbn13, preco) VALUES ('História do Brasil', '1324659173820', 25,80); #ERRO
    IF erro_sql = FALSE THEN
		COMMIT;
        SELECT 'Transação efetivada com sucesso.' AS resultado;
    ELSE
		ROLLBACK;
        SELECT 'Erro na transação!' AS resultado;
	END IF;
END //

CALL insere_dados();