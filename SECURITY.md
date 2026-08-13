# Security Policy

## Supported versions

Security fixes are made on the latest tagged release and the default branch.

## Reporting

Use GitHub's private security advisory feature for suspected vulnerabilities.
Do not include Canva cookies, tokens, account details, private designs,
screenshots, or browser databases in a report.

## Security boundaries

This project intentionally:

- runs setup and repair operations only as a normal user;
- does not install browser packages or change system repositories;
- never reads or copies Canva authentication, account, or design databases;
- never automates page content, account actions, uploads, or downloads;
- keeps IBus repair separate, opt-in, and limited to `ibus restart`;
- removes only exact project-owned paths.

The project launches Brave and the official Canva website. Their security,
availability, privacy policies, subscriptions, and account behavior remain
outside this project's control.
