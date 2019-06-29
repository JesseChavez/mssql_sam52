# Sample Rails App used to test the `activerecord-jdbc-alt-adapter`


App specs:

- rails 5.2.3
- SQL Server database

this app has a `MODE` environment variable which is usually used to connect to
a specific database.

for example when you want to use JRuby:


Switch to JRuby

```
MODE=jruby bin/rails db:create
```

the above command will create a database called `sam52_jruby_development`

then:


```
MODE=jruby bin/rails db:migrate


MODE=jruby bin/rails c

```

For CRuby, switch to Cruby:


```
MODE=cruby bin/rails db:create
```

the above command will create a database called `sam52_cruby_development`

then:


```
MODE=cruby bin/rails db:migrate


MODE=cruby bin/rails c

```
