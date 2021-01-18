# Simple SPA Forum Application

[![Build Status](https://travis-ci.org/joemccann/dillinger.svg?branch=master)](https://laravel.com/)

### Using

Using frameworks and library packages:

* [Laravel](https://laravel.com/) - Backend php framework for web app
* [Vue JS](https://vuejs.org/) - frontend javascript framework for web app
* [Vue Simplemde](https://github.com/F-loat/vue-simplemde) - Vue simple markdown text editor
* [Twitter Bootstrap](https://getbootstrap.com) - great UI boilerplate for modern web apps
* [Vuetify](https://vuetifyjs.com/en/getting-started/installation/) - Vuetify Material Design Framework
* [Tymon/JWT](https://github.com/tymondesigns/jwt-auth) - JWT for authentication
* [Pusher](https://pusher.com/) - for realtime noti
* [Laravel Web Socket](https://beyondco.de/docs/laravel-websockets/getting-started/introduction) - replace for pusher

### Installation

Install the dependencies and start the server.

```sh
$ composer install
$ npm install
$ npm run watch
```

For database run ...

create database 'spa_form'

import spa_forum.sql in your database (or)
```sh
$ php artisan migrate
$ php artisan db:seed
```

For project run ...

```sh
$ php artisan serve
```
