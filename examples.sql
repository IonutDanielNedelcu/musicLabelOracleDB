-- EXERCITIUL 6
-- Apelare procedura
BEGIN
    restructurare;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE(SQLERRM);
END;
/



-- EXERCITIUL 7
-- Apelare procedura
BEGIN
    DBMS_OUTPUT.PUT_LINE('              Optiunea 1: ');
    BEGIN
        venituri_din_bilete(1);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    DBMS_OUTPUT.PUT_LINE('              Optiunea 2: ');
    BEGIN
        venituri_din_bilete(2);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    DBMS_OUTPUT.PUT_LINE('              Optiunea 3: ');
    BEGIN
        venituri_din_bilete(3);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    DBMS_OUTPUT.PUT_LINE('              Optiunea 4: ');
    BEGIN
        venituri_din_bilete(4);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    BEGIN
        venituri_din_bilete(0);
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
END;
/



-- EXERCITIUL 8
-- Apelare functie
DECLARE
    v_obiect_returnat obiect_cantec;
BEGIN
    -- cantecul nu exista in baza de date
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('un cantec');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- exista mai multe cantece cu acelasi nume
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Supranatural');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- cantecul nu apartine unui album
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Micul print');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- cantecul nu are genuri muzicale asociate
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Floare de fier');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- nu detine nimeni drepturi de autor asupra cantecului
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('De ce?');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- drepturile de autor asupra cantecului sunt detinute de mai multi artisti
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Efemer');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- cantecul apartine unui album si are genuri muzicale asociate
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Ana');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- cantecul apartine unui album si are genuri muzicale asociate
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Echilibru');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
    -- cantecul apartine unui album si are genuri muzicale asociate
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        v_obiect_returnat := merchandise_artist_cantec('Dezbracata de greseli');
        afisare_merchandise(v_obiect_returnat);
    EXCEPTION
        WHEN OTHERS THEN
            NULL;
    END;
END;
/



-- EXERCITIUL 9
BEGIN
    --biletul nu exista
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(50, 'rock');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    --genul muzical nu exista
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(1, 'jazz');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
    
    --nu exista artisti la concert
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(13, 'pop');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
    
    --nu exista artisti pentru genul muzical introdus
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(2, 'folk');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    --nu exista concerte alternative
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(2, 'pop');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;

    --merge
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(1, 'rock');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
    
    --merge
    BEGIN
        DBMS_OUTPUT.NEW_LINE;
        concert_alternativ(7, 'alternativ');
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE(SQLERRM);
    END;
END;
/



-- EXERCITIUL 10
SELECT COUNT(*) FROM ARTISTI;

INSERT INTO ARTISTI (PSEUDONIM, PROCENTAJ)
VALUES ('The Kryptonite Sparks', 0.6);

INSERT INTO ARTISTI (PSEUDONIM, PROCENTAJ)
VALUES ('Sea Section', 0.5);

INSERT INTO ARTISTI (PSEUDONIM, PROCENTAJ)
VALUES ('Implant Pentru Refuz', 0.7);

SELECT * FROM ARTISTI;

DELETE FROM ARTISTI
WHERE PSEUDONIM = 'Sea Section';

DELETE FROM ARTISTI
WHERE PSEUDONIM = 'The Kryptonite Sparks';

DELETE FROM ARTISTI
WHERE PSEUDONIM = 'Luna Amara';

SELECT * FROM ARTISTI;



-- EXERCITIUL 11

SELECT * FROM view_artisti;

INSERT INTO view_artisti (ARTIST, PIESE, ALBUM)
VALUES ('Andra Andriuca', 'Noi nu ne privim', 'Linistea nu se imparte');

INSERT INTO view_artisti (ARTIST, PIESE, ALBUM)
VALUES ('Vama', 'Perfect fara tine', 'Vama');

INSERT INTO view_artisti (ARTIST, PIESE, ALBUM)
VALUES ('Vama', 'Pe sub geam', NULL);

INSERT INTO view_artisti (ARTIST, PIESE, ALBUM)
VALUES (NULL, 'Povesti', 'Migala');

INSERT INTO view_artisti (ARTIST, PIESE, ALBUM)
VALUES ('Luna Amara', NULL, 'Vama');

SELECT * FROM view_artisti;



-- EXERCITIUL 12
-- apelare trigger
CREATE TABLE TEST (
    ID_TEST NUMBER
);

ALTER TABLE TEST
ADD NUME VARCHAR2(50);

DROP TABLE TEST;

-- afisare log
SELECT * FROM LOG_ACTIUNI_TABELE;


-- EXERCITIUL 13
-- apelare ultima procedura din pachet
BEGIN
    pachet.reglementare_totala;
END;
/