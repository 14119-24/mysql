# MySQL Import Package

Import these files into your `voting_system` MySQL database in this order:

1. `01-schema.sql`
2. `02-candidate-registration.sql`
3. `03-campaign-management.sql`
4. `04-payment-requests.sql`

Notes:

- These are the SQL files that match the current deployed app setup.
- Do not import `database/candidates-schema.sql` into the same database because it conflicts with the main `candidates` table created by `01-schema.sql`.
- If you want the default admin account created automatically, use the app setup flow after import:
  - `/setup.html`
  - or `setup.php`
