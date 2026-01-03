# NIDO Music Label - Database Management Systems (Oracle)

Note: due to project requirements, the repository uses romanian for tables, columns, and variables definition.

**Concepts Used**
- **Tables and records:** modeling entities as tables and populating them with coherent rows.
- **Primary and foreign keys, constraints:** PK, FK, UNIQUE, NOT NULL, CHECK.
- **Oracle-specific data types:** indexed tables, nested tables, varrays, RECORDS, OBJECTS.
- **Cursors:** standard cursors, parameterized cursors, reference cursors, cursor-expressions.
- **Procedures and functions:** stored subprograms with IN/OUT/IN OUT parameters.
- **Packages:** grouping types, procedures and functions for integrated workflows.
- **Error handling:** predefined and custom exceptions.

**Project Requirements (tasks to complete)**
1. **Database purpose:** Clearly describe the utility of the database for `NIDO Music Label` (e.g., managing artists, albums, tracks, contracts, events, sales/licenses).
2. **ERD (Entity-Relationship Diagram):** Draw the ERD; all entities, relationships and attributes must be labeled in Romanian.
3. **Conceptual diagram:** From the ERD, create the Conceptual Diagram of the model, including all necessary attributes (entity, simple/compound attributes, keys).
4. **Implementation in Oracle:** Implement the Conceptual Diagram using SQL: `CREATE TABLE`, data types, and constraints (PK, FK, UNIQUE, CHECK, NOT NULL).
5. **Populate data:** Insert coherent data: at least 5 rows for each independent entity and at least 10 rows for each associative entity.
6. **Stored subprogram with collections:** Formulate a natural-language problem solved by an independently stored subprogram that uses all three studied collection types (indexed tables, nested tables, varrays). Explain the logic and why each collection type is used.
7. **Stored subprogram with cursors:** Formulate a natural-language problem solved by a stored subprogram that uses at least two different types of cursors, one of which must be a parameterized cursor that depends on the other cursor's result.
8. **Multi-table function:** Formulate a natural-language problem solved by a function that uses at least three tables in a single SQL statement. Handle all exceptions that may appear, including the predefined exceptions `NO_DATA_FOUND` and `TOO_MANY_ROWS`.
9. **Complex procedure:** Formulate a natural-language problem solved by a procedure with two parameters that uses at least five tables in a single SQL statement. Define at least two custom exceptions (different from system predefined ones).
10. **Command-level LMD trigger:** Define a command-level LMD trigger — state its purpose and provide a pseudo-implementation example.
11. **Row-level LMD trigger:** Define a row-level LMD trigger — explain its purpose and provide an example.
12. **LDD trigger:** Define an LDD trigger (e.g., on deletion) and explain its behavior.
13. **Package:** Formulate a natural-language task solved by a package that includes the necessary types and objects for an integrated action flow (minimum of 2 datatype definitions, 2 functions, 2 procedures). Describe the package components and their interactions.
