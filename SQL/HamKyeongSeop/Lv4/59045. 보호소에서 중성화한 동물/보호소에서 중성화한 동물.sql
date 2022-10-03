select i.animal_id , i.animal_type, i.name
from animal_ins as i join animal_outs as o

where i.animal_id = o.animal_id
  AND
    i.SEX_UPON_INTAKE != o.SEX_UPON_OUTCOME