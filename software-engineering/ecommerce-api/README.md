# E-Commerce API Assignment

## Background

You have been hired by an e-commerce company that sells products through various online marketplaces (e.g., Amazon, eBay, Shopify). The company wants to centralise its sales data from these different platforms into a single database for better analysis and reporting. They require an API that will allow them to ingest sales data from these platforms, process it, and store it in a unified format.

## Objective

Develop a Python-based API that allows the company to ingest, process, and store sales data from different online marketplaces. The API should provide endpoints to ingest sales data and retrieve the data for reporting and analysis.

_Note_: External libraries may be used for this assignment.

## Solution Requirements

The core requirements must be fulfilled by solutions from all candidates. Senior Data Engineer candidates should complete as many of the stretch requirements as possible. Core Data engineer candidates are welcome to complete the stretch requirements as well, but it is not expected.

### Core Requirements

1. The API should be a RESTful API created using a Python framework (e.g., Flask, FastAPI, Django).
2. The API should have the following endpoints:

   - POST /orders - A POST endpoint that accepts sales data in JSON format from various platforms. The endpoint must accept a payload that follows the same schema as the orders table in the DB.
   - GET /orders - A GET endpoint that retrieves a list of order items. Support filtering by date range and platform, and product ID.
   - GET /orders/<order_id> - A GET endpoint that retrieves all order items for a specific order by order ID.
   - GET /health_check - A GET endpoint that is used for checking if the order_items service is available. It should return a message with the text "Service is healthy".

3. The API must perform data validation on the input data to the "POST /orders" endpoint
4. The API should perform queries against the SQLite DB in "./db/ecommerce.db"
   _Note_: If you want to reset the DB, run `./db/init/seed_db.sh` in your terminal.
   _Note_: Monetary values are given in US Dollars.

5. Implement error handling

   - The API should gracefully handle error by providing responses with clear messages and appropriate HTTP status codes.

6. Include documentation

   - Document setup instructions for running the API locally
   - Provide Swagger documentation for how to interact with each endpoint

### Stretch Requirements

1. Integrate logging to capture API request/response details and errors.
2. Allow users to choose between "USD" (US Dollars) or "GBP" (Great Britain Pounds) when making requests to the "GET /orders" or "GET /orders/<order_id>" endpoints via a query parameter.
3. Use pagination in the "GET /orders" endpoint for retrieving large datasets.
4. Write unit tests for the main components of the API.
   - Cover different scenarios, including valid data, invalid data, and edge cases.
5. Use Docker to create a deployable image for the API, ensuring the setup is production-ready.

## Starter Code

- main.py should be used as the entrypoint for your API.
- ecommerce_api/ should be used for all of the source code for your API.
- db/ecommerce.db should be used as the source of data.
- Files in ./db/data/ are for seeding/resetting the database. The API _must_ not read from or write to these files.

## Submission Guidelines

- Provide a README file with clear instructions on how to set up and run the API, as well as explanations for design decisions. _Note_: This README file will form the basis of a discussion about your solution in the next interview stage.
- Your solution must contain a "main.py" file at the root of the solution. This is what will be run by the reviewers.
- Ensure that your code is well-documented and adheres to Python best practices.
- Clearly indicate which bonus features have been implemented.

## Evaluation Criteria

- Code Quality: Organisation, readability, and adherence to best practices.
- Functionality: Correctness and completeness of the core requirements.
- Scalability & Performance: Ability to handle larger data volumes or more complex operations.
- Bonus Features: Successful implementation of the stretch requirements.
- Testing: Coverage and effectiveness of test cases.
- Documentation: Clarity and usefulness of the API documentation and README file.
