# MUX-SQL

This is a sample application that uses the `gorilla/mux` router and `Postgres` for database operations. The application is a simple product catalog that allows you to add products, fetch all products, and fetch a single product. 

## Installation Setup

```bash
git clone https://github.com/keploy/samples-go.git && cd samples-go/mux-sql
go mod download
```

Using the docker-compose file we will start our postgres instance:-

```bash
# Start Postgres
docker-compose up -d postgres
```

### Update the Host

> **Since we have setup our sample-app natively set the host to `localhost` on line 10.**

### Capture the Testcases

Now, we will create the binary of our application:-

```zsh
go build -cover
```

### 1. Generate shortned url

```bash
curl --request POST \
  --url http://localhost:8010/product \
  --header 'content-type: application/json' \
  --data '{
    "name":"Bubbles", 
    "price": 123
}'
```
this will return the response. 
```
{
    "id": 1,
    "name": "Bubbles",
    "price": 123
}
```

### 2. Fetch the Products
```bash
curl --request GET \
  --url http://localhost:8010/products
```

we will get output:

```json
[{"id":1,"name":"Bubbles","price":123},{"id":2,"name":"Bubbles","price":123}]
```

### 3. Fetch a single product

```sh
curl --request GET \
  --url http://localhost:8010/product/1

we will get output:-
```json
{"id":1,"name":"Bubbles","price":123}
```