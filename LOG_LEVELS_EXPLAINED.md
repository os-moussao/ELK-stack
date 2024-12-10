# Log Levels explained

AI generated.

## Levels
`INFO`:
- Purpose: Give general information about the application’s normal operations.
- Use Case:
    - Startup messages.
    - Major lifecycle events (e.g., server listening, database connections established).
    - High-level application state changes.
- Example:
```ts
logger.info('Server is running on http://localhost:3000');
```

`FATAL`:

- Purpose: Log unrecoverable errors causing the application to shut down.
- Use Case:
  - Catastrophic failures, such as critical configuration errors or inability to bind to a network port.
- Example:
```ts
logger.fatal('Unable to initialize the application!');
process.exit(1);
```

`ERROR`:
- Purpose: Capture runtime errors that need attention but are not necessarily fatal.
- Use Case:
  - Errors in processing requests, failed database queries, or third-party service failures.
  - Errors not caused by the user.
- Example:
```ts
logger.error('Database query failed', error.stack);
```

`WARN`:

- Purpose: Highlights issues that could potentially become errors.
- Use Case:
  - Errors caused by bad API usage like invalid user input or deprecated functionality
  - Near-capacity resource usage.
- Example:
```ts
logger.warn('High memory usage detected: 85% of heap used');
```

`DEBUG`:
- Purpose: Provides detailed context for debugging purposes.
- Use Case:
  - Tracing application logic, function calls, or API requests.
- Example:
```ts
logger.debug(`Fetching user details for ID: ${userId}`);

```

`TRACE` (= `VERBOSE`):
- Purpose: Offers very detailed and low-level information, often more extensive than debug.
- Use Case:
  - Tracing application internals, such as library-specific operations.
  - Annotating each step in an algorithm or a query.
  - Useful when trying to trace obscure issues that require full insight into the system's behavior.

- Example:
```ts
logger.verbose('Starting authentication process for user: johndoe');
logger.verbose('Extracted JWT from Authorization header: eyJhbGciOiJIUz...');
logger.verbose('Decoded JWT payload: { "userId": "12345", "roles": ["admin"] }');
logger.verbose('Checking user existence in database for userId: 12345');
logger.verbose('Authentication successful: user johndoe granted access');
```
