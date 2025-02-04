# PostGresSQL-Benchmarking-Project
This project focuses on optimizing database query performance by creating and analyzing indices in PostgreSQL.The goal is to help database administrators make informed decisions about index creation by benchmarking query performance with and without indices.

## Project Overview
In today's world, database operations are critical for everyday applications like Amazon purchases, Facebook posts, and Instagram stories. Delays in these operations can lead to poor user experiences. To avoid such delays, database administrators optimize query performance by creating indices. However, creating indices requires careful consideration, as they can introduce overhead.

This project explores:
- Identifying attributes for index creation.
- Determining the most efficient index type.
- Assessing the impact of indices on query performance.
- Justifying index choices based on PostgreSQL-specific reasoning and knowledge of Relational Database Management Systems (RDBMS).

The project was conducted in two phases:
1. **Basic Indexing**: Creating indices to optimize query performance with High Load (1000 - 10000 Runs).
2. **Advanced Optimization**: Modifying the physical plan to force PostgreSQL to use specific indices and analyzing the impact on performance.

## Tools and Technologies
- **PostgreSQL**: The relational database management system used for this project.
- **PGAdmin4**: The tool used for benchmarking and analyzing query performance.
- **SQL**: The language used to write and optimize queries.

## Repository Structure
project/

├── loaddb.sql                  # SQL to Load our Sample Data

├── queries/                # SQL files for the queries analyzed.
│   ├── Basic Indexing Queries     # Queries for Basic Indexing Report

│   └── advanced_optimization_queries.sql #Queries for Advanced Optimization Report

├── physical_plans/         # Physical Plans Before and After Optimization.

├── results/                # Benchmarking results and performance analysis.

│   ├── basic_indexing_results.pdf       # Report for Phase 1

│   └── advanced_optimization_results.pdf # Report for Phase 2.

└── README.md               # Project overview and instructions (this file).


## Key Steps
1. **Identify Queries**: Analyze frequently performed queries that need optimization.
2. **Create Indices**: Determine the best attributes and index types (e.g., B-tree, Hash, GIN, etc.) for each query.
3. **Benchmark Performance**: Compare query execution times with and without indices.
4. **Modify Physical Plans**: Force PostgreSQL to use specific indices and analyze the impact on performance.
5. **Justify Choices**: Provide reasoning for index selection based on PostgreSQL documentation and course material.

## Results
The benchmarking results demonstrate the impact of indices on query performance. In some cases, indices significantly improved performance, while in others, they introduced overhead. The advanced optimization phase provided deeper insights into how PostgreSQL's query planner works and how it can be influenced.

## How to Reproduce
1. Clone this repository.
2. Set up a PostgreSQL database and import the sample data. (You may need to set up a Linux Virtual Machine to be able to use PGAdmin) 
3. Run the queries provided in the `queries/` folder.
4. Create indices using the SQL files in the `indices/` folder.
5. Use PGAdmin4 to benchmark query performance.
6. Modify physical plans (if desired) and analyze the results.

## Key Takeaways
- Understanding the trade-offs of index creation.
- Gaining hands-on experience with PostgreSQL query optimization.
- Demonstrating benchmarking and analysis skills in a real-world RDBMS context.

## Future Work
- Explore other types of indices (e.g., GIN, GiST) for more complex queries.
- Analyze the impact of indices on write-heavy workloads.
- Investigate how query performance scales with larger datasets.

## Contributing
This project was completed as part of a course assignment. Contributions are not currently being accepted, but feel free to fork the repository and adapt it for your own use.
