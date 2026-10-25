-- Q1: quanti annunci ci sono in totale?
-- Risultato: 8844
SELECT COUNT(*) AS totale_annunci
FROM listings;

-- Q2: quanti annunci non hanno il prezzo indicato?
-- Risultato: 700 (circa 7,9% del totale)
SELECT COUNT(*) AS annunci_senza_prezzo
FROM listings
WHERE price IS NULL;

-- Q3: quanti annunci ci sono nella Terraferma?
-- Risultato: 1989 (circa 22,5% del totale)
SELECT COUNT(*) AS annunci_terraferma
FROM listings
WHERE neighbourhood_group = 'Terraferma';

-- Q4: quanti annunci hanno "canal" nel nome?
-- Risultato: 765 (circa 8,7% del totale)
-- Nota: LIKE trova la sequenza di lettere ovunque, quindi include anche "canale", "Canal Grande" ecc.
SELECT COUNT(*) AS annunci_canal
FROM listings
WHERE name LIKE '%canal%';

-- Q5: quanti annunci hanno "garden" nel nome?
-- Risultato: 212 (circa 2,4% del totale)
SELECT COUNT(*) AS annunci_garden
FROM listings
WHERE name LIKE '%garden%';
