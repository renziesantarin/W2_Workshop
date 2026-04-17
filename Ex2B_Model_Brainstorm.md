# Logical Model

Group members: Marenza Santarin, Chris Ramirez



CUSTOMERS

\- customer\_id (PK)

\- first\_name

\- last\_name

\- phone

\- email

\- address



DOGS

\- dog\_id (PK)

\- customer\_id (FK)

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

\- customer\_id (FK)

\- walk\_id (FK)

\- amount

\- payment\_date

\- payment\_method

