# Todo Webapp with Authentication — PRD

## Problem Statement

People who track their day-to-day tasks in scattered notes, sticky notes, or
generic note apps lose track of what is done and what is pending, and have no
guarantee their list survives a lost device or a cleared browser. They need a
single, private place to keep their to-do list that is tied to their identity
and available wherever they sign in.

## Solution

A simple to-do web application: a user signs in securely, then adds, views,
edits, completes, and deletes their own to-do items. Every item is persisted
in a database against the signed-in user's identity, so the list is private
and available across sessions and devices.

## Actors

- **User** — a signed-in individual who manages their own to-do items. A user
can only ever see and act on their own items; there is no shared or admin
view.

## User Stories

1. As a user, I want to sign in securely, so that my to-do list is private to me and no one else can see or change it.
2. As a user, I want to add a new to-do item, so that I can capture something I need to do.
3. As a user, I want to view my list of to-do items, so that I can see everything pending.
4. As a user, I want to mark a to-do item as complete (and reopen it), so that I can track my progress.
5. As a user, I want to edit a to-do item's title, so that I can fix or update it.
6. As a user, I want to delete a to-do item, so that I can remove things I no longer need to track.
7. As a user, I want my to-do items to persist in a database and stay available whenever I sign back in, from any device, so that I never lose my list.

## Product Decisions

- **Sign-in**: every user signs in via SSO through Thunder, the platform identity provider — this organization's standing default for all web apps.
- **Data persistence**: to-do items are stored in a database, keyed to the signed-in user, so they survive logout and are available from any device.
- **Item scope**: an item carries only a title and a completion status (plus its created date for ordering) — no due dates, priorities, or categories/tags. This keeps the first version deliberately minimal.
- **No external third-party services**: nothing in this product needs a payments, email, or other outside integration.

## Out of Scope

- Any admin or shared/team view — every user only ever manages their own items.
- Due dates, reminders, priority levels, or categories/tags on items.
- Sharing or collaborating on a to-do list with other users.
- Notifications of any kind (email, push, etc.).
- A native mobile app — this is a web application only.

## Open Questions

None at this time.