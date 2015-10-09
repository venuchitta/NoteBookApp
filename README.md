# Interview

Your problem will be to create a Ruby on Rails application to service small businesses financial management. A user should be able to log into your system, log and categorize transactions and view reporting metrics on those transactions (such as when transactions were logged and what types of transactions were logged and the amounts of different categories of transactions). You should be able to import the Sales Receipt information (https://developer.intuit.com/docs/api/accounting/SalesReceipt) from the Quickbooks Online OAuth API into your system and log the receipts as transactions. Set your Quickbooks Online app up as a Sandbox application so we can validate it works properly (https://developer.intuit.com/docs/0100_accounting/0006_sandboxes).  Additional information about the Quickbooks Online API is located here - https://developer.intuit.com/docs/0100_accounting.

The application must meet the minimum criteria below. There is no limit to libraries or external services you can use to improve functionality of the application so feel free to use anything on the web. The app should be both well designed (pleasing to the eye) and well coded.

The interview will be autonomous and last one week (beginning Friday October 9 2015 and ending Friday October 16 2015 at 10AM MST). Please write clean well tested code. We will be judging the submission based on quality of individual commits as well as the project as a whole so be sure to commit early and often. Write a branch with your first_name-last_name as the style for the branch. For example, my submission would be on a branch titled ben-nelson. Open a pull request when you are completed or whenever the time for the interview expires, whichever comes first. 

Do not hesitate to ask questions! We will be available to clarify problems encountered. Send questions or concerns to ben@bookly.co

Specific details of the problem are to write a Rails application that will allow the following:
1. The application should have an API that you can access with a JSON client, such as curl or a mobile app.
2. The application should have some form of authentication scheme and user accounts. You should be able to sign up for an account.
3. A user should be able to log transactions with an amount and type.
4. A user should be able to categorize transactions by type.
5. A user should be able to create categories to assign transactions to.
6. A user should be able to import sales receipts from Quickbooks Online as transactions.
7. A user should be able to generate graphical reports displaying information on transactions they have logged.
8. The types of supported reports that should be included should be - transactions by category & transactions by date

Any additional features in addition to the above are welcome and encouraged.
