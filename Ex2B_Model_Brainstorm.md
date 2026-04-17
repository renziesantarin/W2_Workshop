# Requirements and Conceptual Model

Group members: Marenza Santarin, Cris Ramirez



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

