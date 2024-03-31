# Setup Database
```bash
sudo -u postgres psql -d uabp -f path_script.sql
```
Caso tenha problemas com permissão:
```bash
cp path_script.sql /tmp
```
Se necessário:
```bash
sudo chown postgres:postgres /tmp/database.sql 
```
Repita o primeiro passo!
