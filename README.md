# BE Spring Boot Test


---
### Pull and Run Docker Image

```bash
docker pull ajigile/rest-test:2
docker run --rm -p 8080:8080 -ti ajigile/rest-test:2
``` 
**Note:** wait until the service finish starting-up.

---
### List of Customer Commands

1. List of customers, also showing the 2 custom fields, paginated and sorted by
   customer name
   
   - List all customer
        ```bash
        curl -v "http://localhost:8080/customer"
        ``` 

    - Displaying first 2 customers (total 4), first page
        ```bash
        curl -v "http://localhost:8080/customer?size=2&page=0"
        ```

    - Displaying next 2 customers (total 4), second page
        ```bash
        curl -v "http://localhost:8080/customer?size=2&page=1"
        ```

    - Sort (descending) customer by their first name
        ```bash
        curl -v "http://localhost:8080/customer?sort=firstName,desc"
        ```
      
2. Average time for a lead to become a prospect and a prospect to become a customer
    ```bash
    curl -v "http://localhost:8080/api/rest/avgLeads"
    ```
3. An end point showing all the customers grouped by tag and vice versa
   ```bash
    curl -v "http://localhost:8080/api/rest/customerTag"
    ```
    ```bash
    curl -v "http://localhost:8080/api/rest/customer{?page,size,sort}"
    ```
   **Note:** you can use parameters (size, page, sort) as point 1. above
