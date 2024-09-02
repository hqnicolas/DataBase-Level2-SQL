CREATE TABLE regiao (
    cd_regiao INT PRIMARY KEY,
    nm_regiao VARCHAR(50)
);

CREATE TABLE estado (
    cd_estado INT PRIMARY KEY,
    cd_regiao INT,
    nm_estado VARCHAR(50),
    sigla_uf CHAR(2),
    FOREIGN KEY (cd_regiao) REFERENCES regiao(cd_regiao)
);

CREATE TABLE municipio (
    cd_municipio INT PRIMARY KEY,
    nm_municipio VARCHAR(100),
    cd_estado INT,
    FOREIGN KEY (cd_estado) REFERENCES estado(cd_estado)
);



SELECT e.nm_estado, COUNT(m.cd_municipio) AS qtd_municipios 
FROM estado e 
JOIN municipio m ON e.cd_estado = m.cd_estado 
GROUP BY e.nm_estado;


