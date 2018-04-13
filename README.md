Integrantes:
Gianluca Fenzo
Gianluca Troncossi

Entity Relatiionship Model (Explanation):
The model is formed by 4 main entities and other 7 necessary entities.
User: This table, houses the main data of users, users also have roles, which separates administrator, from users and identifies backers, creators or both for each user.
Projects: Contains all the data for each project, such as video, images (stored as strings), Project name etc.
Backers & Created: Both tables are used for the case where not a single user has a project but a group of people, so by creators, we would see all members of a group with there company name, backers is the same principle as creators. 
Now the other 7 tables,
Created_projects & Backed_projects: This two tables where only created for the N to N relationship between creators & projects and backers & projects.
Bank_account, wishlist & promises: All are used to store multivariable information of users.
Package_price: Use to store multivariable information of projects. 

