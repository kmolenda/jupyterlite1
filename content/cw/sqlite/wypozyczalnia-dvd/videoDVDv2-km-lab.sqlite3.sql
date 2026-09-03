--
-- Plik wygenerowany przez SQLiteStudio v3.4.4 dnia pon. gru 4 00:57:58 2023
--
-- Użyte kodowanie tekstu: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: Aktorzy
CREATE TABLE Aktorzy (
    IdAktora       INTEGER       PRIMARY KEY AUTOINCREMENT
                                 NOT NULL,
    NazwiskoAktora NVARCHAR (30) NOT NULL
                                 COLLATE NOCASE,
    ImieAktora     NVARCHAR (30) NOT NULL
                                 COLLATE NOCASE
);
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (1, 'Ringwald', 'Molly');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (2, 'Hall', 'Anthony');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (3, 'Chase', 'Chevy');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (4, 'Holbrook', 'Hal');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (5, 'Smith', 'Kurtwood');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (6, 'Haim', 'Corey');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (7, 'Rossi', 'Leo');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (8, 'Harris', 'Melanie');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (9, 'Cameron', 'Candace');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (10, 'Hopkins', 'Anthony');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (11, 'Philips', 'Leslie');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (12, 'Baxter', 'Meredith');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (13, 'Reese', 'Della');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (14, 'Kline', 'Kevin');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (15, 'Smith', 'Will');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (16, 'Murphy', 'Brittany');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (17, 'Baker', 'Kathy');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (18, 'Silver', 'Ron');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (19, 'Phoenix', 'Joaquin');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (20, 'Harris', 'Ed');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (21, 'Gosling', 'Ryan');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (22, 'Phoenix', 'Summer');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (23, 'Davis', 'Hope');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (24, 'Sutherland', 'Donald');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (25, 'Bosworth', 'Kate');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (26, 'Davis', 'Matthew');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (27, 'Gambon', 'Michael');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (28, 'Murphy', 'Eddie');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (29, 'Lynch', 'John');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (30, 'Cox', 'Brian');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (31, 'Wilson', 'Luke');
INSERT INTO Aktorzy (IdAktora, NazwiskoAktora, ImieAktora) VALUES (32, 'Richards', 'Denise');

-- Tabela: Cennik
CREATE TABLE Cennik (
    RodzajFilmu    NVARCHAR (12) NOT NULL
                                 COLLATE NOCASE,
    OplataZa1Dzien NUMERIC,
    PRIMARY KEY (
        RodzajFilmu
    )
);
INSERT INTO Cennik (RodzajFilmu, OplataZa1Dzien) VALUES ('extrahit', 11);
INSERT INTO Cennik (RodzajFilmu, OplataZa1Dzien) VALUES ('hit', 7);
INSERT INTO Cennik (RodzajFilmu, OplataZa1Dzien) VALUES ('nowość', 12);
INSERT INTO Cennik (RodzajFilmu, OplataZa1Dzien) VALUES ('standard', 4);

-- Tabela: Doplaty
CREATE TABLE Doplaty (IdWypozyczenia INTEGER NOT NULL, Doplata NUMERIC, PRIMARY KEY (IdWypozyczenia), FOREIGN KEY (IdWypozyczenia) REFERENCES Wypozyczenia (IdWypozyczenia));
INSERT INTO Doplaty (IdWypozyczenia, Doplata) VALUES (1, 7);
INSERT INTO Doplaty (IdWypozyczenia, Doplata) VALUES (2, 9);
INSERT INTO Doplaty (IdWypozyczenia, Doplata) VALUES (21, 27);
INSERT INTO Doplaty (IdWypozyczenia, Doplata) VALUES (23, 21);

-- Tabela: Filmy
CREATE TABLE Filmy (
    IdFilmu      INTEGER       PRIMARY KEY AUTOINCREMENT
                               NOT NULL,
    TytulFilmu   NVARCHAR (50) NOT NULL
                               COLLATE NOCASE,
    RokProdukcji SMALLINT,
    RodzajFilmu  NVARCHAR (12) NOT NULL
                               COLLATE NOCASE,
    FOREIGN KEY (
        RodzajFilmu
    )
    REFERENCES Cennik (RodzajFilmu) 
);
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (1, 'Szesnaście świeczek', 1984, 'standard');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (2, 'Fletch żyje', 1989, 'standard');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (3, 'Forteca', 1993, 'standard');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (4, 'Błyskawiczna ucieczka', 1994, 'hit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (5, 'Balto', 1995, 'standard');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (6, 'Sekret Sharon', 1995, 'hit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (7, 'Sierpień', 1996, 'hit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (8, 'Odnalezione szczęście', 1997, 'standard');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (9, 'Bardzo Dziki Zachód', 1999, 'hit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (10, 'Spoza czasu', 1999, 'standard');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (11, 'Krew niewinnych', 2000, 'extrahit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (12, 'Niezła heca', 2000, 'hit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (13, 'Buffalo Soldiers', 2001, 'nowość');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (14, 'Fanatyk', 2001, 'extrahit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (15, 'Kraina wiecznego szczęścia', 2001, 'hit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (16, 'Pogrzeb grubej ryby', 2001, 'nowość');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (17, 'Blue Crush', 2002, 'extrahit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (18, 'Droga ku wojnie', 2003, 'nowość');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (19, 'Ja, szpieg', 2004, 'extrahit');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (20, 'Robak', 2005, 'nowość');
INSERT INTO Filmy (IdFilmu, TytulFilmu, RokProdukcji, RodzajFilmu) VALUES (21, 'Trzeci do pary', 2005, 'hit');

-- Tabela: FilmyAktorzy
CREATE TABLE FilmyAktorzy (
    IdFilmu  INTEGER       NOT NULL,
    IdAktora INTEGER       NOT NULL,
    Rola     NVARCHAR (20) COLLATE NOCASE,
    PRIMARY KEY (
        IdFilmu,
        IdAktora
    ),
    FOREIGN KEY (
        IdFilmu
    )
    REFERENCES Filmy (IdFilmu),
    FOREIGN KEY (
        IdAktora
    )
    REFERENCES Aktorzy (IdAktora),
    FOREIGN KEY (
        Rola
    )
    REFERENCES RodzajeRol (Rola) 
);
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (1, 1, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (1, 2, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (2, 3, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (2, 4, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (3, 5, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (4, 6, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (4, 7, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (6, 8, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (6, 9, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (7, 10, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (7, 11, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (8, 12, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (8, 13, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (9, 14, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (9, 15, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (10, 8, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (11, 16, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (12, 17, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (12, 18, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (13, 19, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (13, 20, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (14, 21, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (14, 22, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (15, 10, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (15, 23, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (16, 24, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (17, 25, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (17, 26, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (18, 24, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (18, 27, 'drugoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (19, 28, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (20, 29, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (20, 30, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (21, 31, 'pierwszoplanowa');
INSERT INTO FilmyAktorzy (IdFilmu, IdAktora, Rola) VALUES (21, 32, 'drugoplanowa');

-- Tabela: FilmyGatunki
CREATE TABLE FilmyGatunki (
    IdFilmu INTEGER       NOT NULL,
    Gatunek NVARCHAR (15) NOT NULL
                          COLLATE NOCASE,
    PRIMARY KEY (
        IdFilmu,
        Gatunek
    ),
    FOREIGN KEY (
        IdFilmu
    )
    REFERENCES Filmy (IdFilmu),
    FOREIGN KEY (
        Gatunek
    )
    REFERENCES Gatunki (Gatunek) 
);
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (1, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (1, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (2, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (2, 'kryminalny');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (3, 'science-fiction');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (4, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (4, 'kryminalny');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (5, 'animowany');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (6, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (7, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (7, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (8, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (8, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (9, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (9, 'western');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (10, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (11, 'thriller');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (12, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (13, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (13, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (14, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (14, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (15, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (15, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (16, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (17, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (18, 'dramat');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (18, 'obyczajowy');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (19, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (19, 'sensacyjny');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (20, 'komedia');
INSERT INTO FilmyGatunki (IdFilmu, Gatunek) VALUES (21, 'komedia');

-- Tabela: Gatunki
CREATE TABLE Gatunki (
    Gatunek NVARCHAR (15) NOT NULL
                        COLLATE NOCASE,
    PRIMARY KEY (
        Gatunek
    )
);
INSERT INTO Gatunki (Gatunek) VALUES ('animowany');
INSERT INTO Gatunki (Gatunek) VALUES ('dramat');
INSERT INTO Gatunki (Gatunek) VALUES ('komedia');
INSERT INTO Gatunki (Gatunek) VALUES ('kryminalny');
INSERT INTO Gatunki (Gatunek) VALUES ('obyczajowy');
INSERT INTO Gatunki (Gatunek) VALUES ('science-fiction');
INSERT INTO Gatunki (Gatunek) VALUES ('sensacyjny');
INSERT INTO Gatunki (Gatunek) VALUES ('thriller');
INSERT INTO Gatunki (Gatunek) VALUES ('western');

-- Tabela: Klienci
CREATE TABLE Klienci (
    IdKlienta        INTEGER       PRIMARY KEY AUTOINCREMENT
                                   NOT NULL,
    NrDowodu         NVARCHAR (9)  NOT NULL
                                   COLLATE NOCASE,
    NazwiskoKlienta  NVARCHAR (30) NOT NULL
                                   COLLATE NOCASE,
    ImieKlienta      NVARCHAR (30) COLLATE NOCASE,
    Plec             NVARCHAR (1)  COLLATE NOCASE,
    DataUrodzenia    DATETIME,
    Ulica            NVARCHAR (40) COLLATE NOCASE,
    KodPocztowy      NVARCHAR (6)  COLLATE NOCASE,
    Miejscowosc      NVARCHAR (30) COLLATE NOCASE,
    DataWprowadzenia DATETIME
);
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (1, 'AB1396273', 'Kowalski', 'Ireneusz', 'M', '1981-12-04 00:00:00', 'Komandosów 23', '31-210', 'Kraków', '2006-04-02 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (2, 'CG2835671', 'Malinowska', 'Urszula', 'K', '1984-08-25 00:00:00', 'Wielicka 2/45', '31-045', 'Kraków', '2006-06-11 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (3, 'JF9807634', 'Kowalczyk', 'Maciej', 'M', '1980-02-20 00:00:00', 'Mała 3', '30-210', 'Kraków', '2006-06-11 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (4, 'KLO298091', 'Kowalczyk', 'Maciej', 'M', '1980-12-09 00:00:00', 'Krótka 23/35', '31-190', 'Kraków', '2006-06-11 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (5, 'MJ8986412', 'Kowalski', 'Wojciech', 'M', '1978-10-31 00:00:00', 'Zielona 28', '29-200', 'Myślenice', '2006-09-15 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (6, 'KL2109235', 'Wolak', 'Kamila', 'K', '1981-02-23 00:00:00', 'Kosynierów 23', '30-156', 'Kraków', '2007-01-10 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (7, 'WM908901', 'Kura', 'Anna', 'K', '1983-11-30 00:00:00', 'Miła 24/6', '26-201', 'Olkusz', '2007-03-20 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (8, 'MK8965467', 'Wolak', 'Kamila', 'K', '1984-09-01 00:00:00', 'Krótka 2/9', '31-201', 'Kraków', '2007-03-25 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (9, 'MW9617223', 'Biel', 'Wojciech', 'M', '1977-10-25 00:00:00', 'Leśna 12', '31-190', 'Kraków', '2007-03-26 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (10, 'KL0988972', 'Kowalczyk', 'Maciej', 'M', '1979-06-21 00:00:00', 'Ułańska 2/21', '30-910', 'Proszowice', '2007-04-10 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (11, 'WA1320981', 'Wolak', 'Wojciech', 'M', '1980-02-12 00:00:00', 'Leśna 23', '31-201', 'Kraków', '2007-04-25 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (12, 'KA2363728', 'Kura', 'Jerzy', 'M', '1981-01-23 00:00:00', 'Lipowa 18/2', '31-023', 'Niepołomice', '2007-05-02 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (13, 'MW9812021', 'Kowalski', 'Ireneusz', 'M', '1978-10-02 00:00:00', 'Kręta 64', '31-284', 'Kraków', '2007-09-16 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (14, 'KA0935262', 'Michalska', 'Iwona', 'K', '1979-12-21 00:00:00', 'Asfaltowa 21', '31-219', 'Kraków', '2008-01-12 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (15, 'WE2835342', 'Malinowska', 'Urszula', 'K', '1976-10-02 00:00:00', 'Kamienna 3/45', '31-273', 'Kraków', '2008-03-21 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (16, 'MD4152662', 'Zięba', 'Dominika', 'K', '1983-05-29 00:00:00', 'Długa 9', '31-263', 'Kraków', '2008-06-12 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (17, 'KA2937651', 'Michalska', 'Iwona', 'K', '1979-12-21 00:00:00', 'Okrężna 5/43', '30-126', 'Kraków', '2008-07-21 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (18, 'WX8415267', 'Bocian', 'Wojciech', 'M', '1981-02-03 00:00:00', 'Żółta 3/81', '26-374', 'Niepołomice', '2008-08-22 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (19, 'MD2415261', 'Bocian', 'Wojciech', 'M', '1981-02-04 00:00:00', 'Mieszka I 22/3', '31-290', 'Kraków', '2008-09-01 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (20, 'KU9896412', 'Nowicki', 'Michał', 'M', '1977-10-03 00:00:00', 'Okólna 6/5', '31-234', 'Kraków', '2008-09-02 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (21, 'KM2536272', 'Mucha', 'Barbara', 'K', '1982-08-20 00:00:00', 'Zielona 23/45', '31-123', 'Kraków', '2008-09-02 00:00:00');
INSERT INTO Klienci (IdKlienta, NrDowodu, NazwiskoKlienta, ImieKlienta, Plec, DataUrodzenia, Ulica, KodPocztowy, Miejscowosc, DataWprowadzenia) VALUES (22, 'KT5162735', 'Biel', 'Wojciech', 'M', '1979-02-03 00:00:00', 'Złota 7/5', '31-234', 'Kraków', '2008-09-02 00:00:00');

-- Tabela: Plyty
CREATE TABLE Plyty (
    IdPlyty INTEGER NOT NULL,
    IdFilmu INTEGER,
    PRIMARY KEY (
        IdPlyty
    ),
    FOREIGN KEY (
        IdFilmu
    )
    REFERENCES Filmy (IdFilmu) 
);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (1, 1);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (2, 2);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (3, 3);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (4, 4);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (5, 5);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (6, 5);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (7, 6);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (8, 6);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (9, 7);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (10, 7);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (11, 8);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (12, 8);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (13, 9);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (14, 9);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (15, 10);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (16, 10);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (17, 11);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (18, 11);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (19, 12);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (20, 12);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (21, 13);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (22, 13);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (23, 13);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (24, 14);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (25, 14);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (26, 14);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (27, 15);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (28, 15);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (29, 15);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (30, 16);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (31, 16);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (32, 16);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (33, 17);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (34, 17);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (35, 17);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (36, 18);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (37, 18);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (38, 18);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (39, 19);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (40, 19);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (41, 19);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (42, 20);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (43, 20);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (44, 20);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (45, 21);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (46, 21);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (47, 21);
INSERT INTO Plyty (IdPlyty, IdFilmu) VALUES (48, 3);

-- Tabela: RodzajeRol
CREATE TABLE RodzajeRol (
    Rola NVARCHAR (20) NOT NULL
                     COLLATE NOCASE,
    PRIMARY KEY (
        Rola
    )
);
INSERT INTO RodzajeRol (Rola) VALUES ('drugoplanowa');
INSERT INTO RodzajeRol (Rola) VALUES ('pierwszoplanowa');

-- Tabela: Wypozyczenia
CREATE TABLE Wypozyczenia (
    IdWypozyczenia   INTEGER  PRIMARY KEY AUTOINCREMENT
                              NOT NULL,
    IdPlyty          INTEGER,
    IdKlienta        INTEGER,
    DataWypozyczenia DATETIME,
    OplataZa1Dzien   NUMERIC,
    DataZwrotu       DATETIME,
    FOREIGN KEY (
        IdPlyty
    )
    REFERENCES Plyty (IdPlyty),
    FOREIGN KEY (
        IdKlienta
    )
    REFERENCES Klienci (IdKlienta) 
);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (1, 19, 4, '2008-11-19 00:00:00', 7, '2008-11-21 00:00:00');
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (2, 39, 4, '2008-11-19 00:00:00', 9, '2008-11-21 00:00:00');
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (3, 11, 4, '2008-11-20 00:00:00', 4, '2008-11-21 00:00:00');
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (4, 4, 6, '2008-11-20 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (5, 2, 6, '2008-11-20 00:00:00', 4, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (6, 45, 6, '2008-11-20 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (7, 17, 6, '2008-11-21 00:00:00', 9, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (8, 30, 10, '2008-11-21 00:00:00', 12, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (9, 33, 10, '2008-11-21 00:00:00', 9, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (10, 24, 10, '2008-11-21 00:00:00', 9, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (11, 34, 1, '2008-11-23 00:00:00', 9, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (12, 42, 1, '2008-11-23 00:00:00', 12, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (13, 25, 1, '2008-11-23 00:00:00', 9, '2008-11-24 00:00:00');
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (14, 9, 1, '2008-11-24 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (15, 7, 1, '2008-11-25 00:00:00', 7, '2008-11-26 00:00:00');
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (16, 15, 8, '2008-11-25 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (17, 27, 8, '2008-11-25 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (18, 43, 8, '2008-11-26 00:00:00', 12, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (19, 10, 8, '2008-11-26 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (20, 36, 2, '2008-11-26 00:00:00', 12, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (21, 18, 2, '2008-11-26 00:00:00', 9, '2008-11-30 00:00:00');
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (22, 20, 2, '2008-11-26 00:00:00', 7, NULL);
INSERT INTO Wypozyczenia (IdWypozyczenia, IdPlyty, IdKlienta, DataWypozyczenia, OplataZa1Dzien, DataZwrotu) VALUES (23, 46, 2, '2008-11-27 00:00:00', 7, '2008-12-01 00:00:00');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
