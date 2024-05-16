# Trino Playground with Iceberg

Init command:
```
docker-compose up -d
```

Enter Trino shell:
```
docker-compose exec -it trino trino
```

Then, you can go.

For example:
```
SELECT * FROM example.example_s3_schema.employees_test;
```

## Existing Settings

- Catalog: example
  - Schema: example_s3_schema
    - Table: employees_test

Catalog is created in [example.properties](./example.properties).  
Schema and table are created in [post-init.sql](./post-init.sql).
