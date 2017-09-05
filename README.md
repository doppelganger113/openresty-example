# openresty-example
Basic example of using Lua with Nginx to log certain url requests and handling web requests

[Lua nginx module docs](https://github.com/openresty/lua-nginx-module)

Docker commands
----------------
(Make script executable with ```bash 
                             chmod u+x script
                             ```
)

Exposes application on localhost:5000

 1. Run
    ```bash
    ~ ./script start
    ```
 2. Stop
    ```bash
     ~ ./script stop
     ```
 3. Reload Nginx
      ```bash
      ~ ./script reload
      ```
 4. Compile def lua scripts and reload nginx
       ```bash
       ~ ./script compile
       ```
 5. Accessing container
    ```bash
    ~ ./script attach
    ```
 6. Remove lingering docker images
     ```bash
     ~ ./script clean
     ```
 7. Stop all docker containers
      ```bash
      ~ ./script stopall
      ```
 8. Clear error.log
       ```bash
       ~ ./script emptylog
       ```
     
     
Lua/LuaJIT bytecode support
---------------------------
As from the v0.5.0rc32 release, all *_by_lua_file configure directives (such as content_by_lua_file) support loading Lua 5.1 and LuaJIT 2.0/2.1 raw bytecode files directly.
```bash
 luajit -b /path/to/input_file.lua /path/to/output_file.ljbc
```

The ```./script compile``` command only compiles default scripts, to compile new
you'll have to do it manually. Check the ./script file for details.