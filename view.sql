CREATE OR replace VIEW zestawienie 
AS 
  SELECT id_position       AS pozycja, 
         wide              AS szerokość_m, 
         length            AS dlugość_m, 
         surface           AS powierzchnia_m2, 
         surface_cost      AS cena_za_kostke_zl, 
         min_high          AS wysokość_minimalna_m, 
         max_high          AS wysokość_maksymalna_m, 
         surface_wall      AS powierzchnia_scian_m2, 
         surface_wall_cost AS cena_za_blache_zl 
  FROM   warehouse; 