    /*
    Procedure for add variables.
    ------------------------------------------------------------------------------------------------------
    VERSION      DATE         AUTHOR     DESCRIPTION
    1.0.05/05    05/05/2020   b.kicior   Create. 
    */
CREATE OR replace PROCEDURE add_value (
v_wide_in     IN warehouse.wide%TYPE, 
v_length_in   IN warehouse.length%TYPE, 
v_min_high_in IN warehouse.min_high%TYPE, 
v_max_high_in IN warehouse.max_high%TYPE) 
IS 
BEGIN 
    INSERT INTO warehouse 
                (wide, 
                 length, 
                 min_high, 
                 max_high) 
    VALUES     (v_wide_in, 
                v_length_in, 
                v_min_high_in, 
                v_max_high_in); 
END; 
/ 