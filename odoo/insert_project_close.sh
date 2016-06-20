#!/bin/bash

echo "Procedura di Inserimento progetti chiusi"

psql -U odoo -d mycompany  -c "select insert_project_close();"

psql -U odoo -d mycompany  -c "select count(*) from x_validate_progect where create_date >=date_trunc('minute',LOCALTIMESTAMP);"
