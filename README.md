# Chat Drupal distribution

A simple Drupal distribution exploring multiple node.js backed chats using Panels.

## Installation

1. `curl -O https://raw.github.com/sprice/chat/master/build-chat.make`
2. `drush make --working-copy build-chat.make public_html`
3. Configure virtual hosts
4. `cd public_html`
5. `drush site-install chat --db-url=mysql://USER:PASS@localhost/DBNAME`

### Node.js configuration

Ensure you have the latest version of `node.js` and `npm` installed on your system.

1. Log in to Drupal site
2. _Administration_ -> _Configuration_ -> _Nodejs_ -> _Node.js server configuration builder_
3. Set the _Service Key_, _Backend Host_ and check _Debug_. _Save configuration_ (only use _Debug_ during development).
4. Copy the _Suggested configuration_ to `public_html/profiles/chat/modules/contrib/nodejs/nodejs.config.js`
5. `cd public_html/profiles/chat/modules/contrib/nodjs/`
6. `npm install`
7. `node server.js` (long running process).

## Creating chat backed Meetings

1. _Add content_ -> _Shout Box_
2. Enter Shout Box information.
3. _Add content_ -> _Meeting_
4. Enter Meeting information. Use the autocomplete text field _Shout Box_ to select the previouslly created _Shout Box_ (title).
