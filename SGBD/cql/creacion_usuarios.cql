CREATE USER 'administrador' WITH PASSWORD '_password1_' SUPERUSER;
CREATE USER 'usuario_normal' WITH PASSWORD '_password2_';

GRANT ALL ON fullpingusers.fullpingdatausers TO 'administrador';
GRANT SELECT ON fullpingusers.fullpingdatausers TO 'usuario_normal';

GRANT ALL ON fullpingdatabase.fullpingdata TO 'administrador';
GRANT SELECT ON fullpingdatabase.fullpingdata TO 'usuario_normal';
GRANT MODIFY ON fullpingdatabase.fullpingdata TO 'usuario_normal';
GRANT DROP ON fullpingdatabase.fullpingdata TO 'usuario_normal';