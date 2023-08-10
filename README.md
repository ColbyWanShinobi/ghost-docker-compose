# ghost-docker-compose

## Local Ghost CMS instance
https://ghost.org/docs/

1. Make sure you have `openssl` installed in your local environment
2. Add `ghost.home.arpa` to your hosts file. IP Address `127.0.0.1`
3. Create a `.env` file with the folowing environment variables:
```
DB_NAME=ghost
DB_USER=ghost
DB_PASSWORD=gpassword
DB_ROOT_PASSWORD=gpassword
LOCAL_DOMAIN=ghost.home.arpa
DB_PORT=33306
```
Note: These are BAD user names and passwords. Do not even think about using them in a Production environment

4. Run the `create_local_cert.sh` script. (Fill in the values or just hit `Enter` for the defaults)
5. Run: `docker compose up`
6. Point your browser here: `http://ghost.home.arpa` for the front page or `http://ghost.home.arpa/ghost` to create an account
7. Boo! 
