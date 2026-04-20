# Requirements and Conceptual Model

Group members: Marenza Santarin, Cris Ramirez, Ndifon Caleb Ndakina, Dimitri Nji



DOG WALKING BUSINESS DATABASE PLAN



End User: Staff and owner



Purpose: Track dogs \& owner info, walks, walkers, and payments.



Categories:

1\. Dogs

2\. Walkers

3\. Walks

4\. Payments



DOGS

\- owner info

\- dog name

\- breed

\- age

\- notes



WALKERS

\- first name

\- last name

\- phone

\- email



WALKS

\- walk date

\- start time

\- duration minutes

\- status



PAYMENTS

\- walk date

\- amount

\- payment date

\- payment method





# Logical Model

**MAIN ENTITIES \& ATTRIBUTES:**



DOGS

\- dog\_id (PK)

\- owner\_info

\- dog\_name

\- breed

\- age

\- notes



WALKERS

\- walker\_id (PK)

\- first\_name

\- last\_name

\- phone

\- email



WALKS

\- walk\_id (PK)

\- dog\_id (FK)

\- walker\_id (FK)

\- walk\_date

\- start\_time

\- duration\_minutes

\- status



PAYMENTS

\- payment\_id (PK)

\- walk\_id (FK)

\- amount

\- payment\_date

\- payment\_method





**RELATIONSHIPS:**



One dog has many walks.



One walker has many walks.



One walk belongs to one dog and one walker.



One customer can make many payments.


## Group ERD Comparison Notes
Discussion date: April 20, 2026
Notes taken by: Cris

### a)  What are the similarities between individual diagrams? What turned out the same?
- All diagrams used the same core entities: Customer/Owner, Dogs, Walkers, Walks, Payments
- Everyone independently split `owner_info` out of Dogs into its own table (fixed the 1NF violation in the original brainstorm)
- All used auto-increment INT primary keys
- Walks linked to both Dogs and Walkers via FKs in every version
- First/last name split on all person entities
- Payments linked to Walks via walk_id (FK) in every version

### b) Where did each of your diagrams differ? What explanation do you have for those differences? What might be the pros and cons of each approach?

Payments difference:
- Cris S.: Payments links only to Walk (normalized)
- Marenza: Payments links to both Walk AND Customer (denormalized)
- Tradeoff: normalized avoids duplicate data and FK mismatch risk; denormalized is faster for customer level queries


### Key takeaway
Same brainstorm, same structure, different details. The payments linkage debate is a real tradeoff data teams make based on query patterns. For Lana's scale, normalized works fine.
