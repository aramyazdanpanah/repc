repc
----
rebar3 erlang project creator(repc) is a template for create Erlang project

how use this template
----
first clone repo
```
git clone https://github.com/aramyazdanpanah/repc
```
install template
```
make install author=Aram email=aramyazdanpanah@gmail.com
```
please set your name for author varaible and your email in email variable

how create app
----
```
rebar3 new repc first_app
```

how compile 
----
for development 
```
make rel-dev
make console-dev
```

for stage 
```
make rel-stage
```
for production
```
make rel-prod
```

how start application
----
after release application by one of make rel-dev | make rel-stage | make rel-prod you can run application by bellow command
```
make rel-dev
_build/dev/rel/first_app/bin/first_app start
# other commad
_build/dev/rel/first_app/bin/first_app ping #ping application
_build/dev/rel/first_app/bin/first_app stop #stop application
_build/dev/rel/first_app/bin/first_app attach #attach to main console
_build/dev/rel/first_app/bin/first_app remote_console #remote console of application
_build/dev/rel/first_app/bin/first_app cli arg #run costum cli of application(the arg pass to src/cli.erl module and output of it return there)

```


TODO
----
complete guide use this template
