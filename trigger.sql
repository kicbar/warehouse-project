    /*
    Trigger that calculate surface and cost.
    ------------------------------------------------------------------------------------------------------
    VERSION      DATE         AUTHOR     DESCRIPTION
    1.0.05/05    05/05/2020   b.kicior   Create. 
    */
CREATE OR REPLACE TRIGGER update_warhouse
BEFORE  INSERT ON WAREHOUSE
FOR EACH ROW
BEGIN
    /*Obliczenie pola powierzchni*/
    :new.surface := :new.wide * :new.length;
    /*Obliczenie ceny za kostke.
      1m^2 kostki = 20zl [netto] */
    :new.surface_cost := :new.surface * 20;
    /*Obliczenie powierzchni scian bocznych i dachu */
    :new.surface_wall := :new.wide * :new.max_high + :new.length * :new.min_high + :new.surface * 1.2;
    /*Obliczanie ceny za blache na sciany
      1m^2 blachy = 22zl [netto]*/
    :new.surface_wall_cost := :new.surface_wall * 22;
    
END;
/