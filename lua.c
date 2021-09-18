#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include <stdlib.h>
#include <stdio.h>


int
main(void)
{
    int status, result, i;
    double sum;
    lua_State *L;

    /*
     * All Lua contexts are held in this structure. We work with it almost
     * all the time.
     */
    L = luaL_newstate();

    luaL_openlibs(L); /* Load Lua libraries */

    /* Load the file containing the script we are going to run */
    status = luaL_loadfile(L, "script.lua");
    if (status) {
        /* If something went wrong, error message is at the top of */
        /* the stack */
        fprintf(stderr, "Couldn't load file: %s\n", lua_tostring(L, -1));
        exit(1);
    }

    /*
     * Ok, now here we go: We pass data to the lua script on the stack.
     * That is, we first have to prepare Lua's virtual stack the way we
     * want the script to receive it, then ask Lua to run it.
     */
    lua_newtable(L);    /* We will pass a table */

    /*
     * To put values into the table, we first push the index, then the
     * value, and then call lua_rawset() with the index of the table in the
     * stack. Let's see why it's -3: In Lua, the value -1 always refers to
     * the top of the stack. When you create the table with lua_newtable(),
     * the table gets pushed into the top of the stack. When you push the
     * index and then the cell value, the stack looks like:
     *
     * <- [stack bottom] -- table, index, value [top]
     *
     * So the -1 will refer to the cell value, thus -3 is used to refer to
     * the table itself. Note that lua_rawset() pops the two last elements
     * of the stack, so that after it has been called, the table is at the
     * top of the stack.
     */
    for (i = 1; i <= 5; i++) {
        lua_pushnumber(L, i);   /* Push the table index */
        lua_pushnumber(L, i*2); /* Push the cell value */
        lua_rawset(L, -3);      /* Stores the pair in the table */
    }

    /* By what name is the script going to reference our table? */
    lua_setglobal(L, "foo");

    /* Ask Lua to run our little script */
    result = lua_pcall(L, 0, LUA_MULTRET, 0);
    if (result) {
        fprintf(stderr, "Failed to run script: %s\n", lua_tostring(L, -1));
        exit(1);
    }

    /* Get the returned value at the top of the stack (index -1) */
    sum = lua_tonumber(L, -1);

    printf("Script returned: %.0f\n", sum);

    lua_pop(L, 1);  /* Take the returned value out of the stack */
    lua_close(L);   /* Cya, Lua */

    return 0;
}


 #include <stdio.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

/* Convenience stuff */
static void close_state(lua_State **L) { lua_close(*L); }
#define cleanup(x) __attribute__((cleanup(x)))
#define auto_lclose cleanup(close_state) 

int main(int argc, char *argv[])
{
    /* Create VM state */
    auto_lclose lua_State *L = luaL_newstate();
    if (!L)
        return 1;
    luaL_openlibs(L); /* Open standard libraries */
    /* Load config file */
    if (argc > 1) {
        luaL_loadfile(L, argv[1]); /* (1) */
        int ret = lua_pcall(L, 0, 0, 0);
        if (ret != 0) {
            fprintf(stderr, "%s\n", lua_tostring(L, -1));
            return 1;
        }
    }
    /* Read out config */
    lua_getglobal(L, "address"); /* (2) */
    lua_getglobal(L, "port");
    printf("address: %s, port: %ld\n", /* (3) */
        lua_tostring(L, -2), lua_tointeger(L, -1));
    lua_settop(L, 0); /* (4) */
    return 0;
}

 #include <stdlib.h>
#include <stdio.h>
#include <curses.h>
 
 
int main(void) {
 
    WINDOW * mainwin, * childwin;
    int      ch;
 
 
    /*  Set the dimensions and initial
	position for our child window   */
 
    int      width = 23, height = 7;
    int      rows  = 25, cols   = 80;
    int      x = (cols - width)  / 2;
    int      y = (rows - height) / 2;
 
 
    /*  Initialize ncurses  */
 
    if ( (mainwin = initscr()) == NULL ) {
	fprintf(stderr, "Error initialising ncurses.\n");
	exit(EXIT_FAILURE);
    }
 
 
    /*  Switch of echoing and enable keypad (for arrow keys)  */
 
    noecho();
    keypad(mainwin, TRUE);
 
 
    /*  Make our child window, and add
	a border and some text to it.   */
 
    childwin = subwin(mainwin, height, width, y, x);
    box(childwin, 0, 0);
    mvwaddstr(childwin, 1, 4, "Move the window");
    mvwaddstr(childwin, 2, 2, "with the arrow keys");
    mvwaddstr(childwin, 3, 6, "or HOME/END");
    mvwaddstr(childwin, 5, 3, "Press 'q' to quit");
 
    refresh();
 
 
    /*  Loop until user hits 'q' to quit  */
 
    while ( (ch = getch()) != 'q' ) {
 
	switch ( ch ) {
 
	case KEY_UP:
	    if ( y > 0 )
		--y;
	    break;
 
	case KEY_DOWN:
	    if ( y < (rows - height) )
		++y;
	    break;
 
	case KEY_LEFT:
	    if ( x > 0 )
		--x;
	    break;
 
	case KEY_RIGHT:
	    if ( x < (cols - width) )
		++x;
	    break;
 
	case KEY_HOME:
	    x = 0;
	    y = 0;
	    break;
 
	case KEY_END:
	    x = (cols - width);
	    y = (rows - height);
	    break;
 
	}
 
	mvwin(childwin, y, x);
    }
 
 
    /*  Clean up after ourselves  */
 
    delwin(childwin);
    delwin(mainwin);
    endwin();
    refresh();
 
    return EXIT_SUCCESS;
}

   for (i = 1; i < argc; ++i) {
    if (luaL_loadbuffer(l, argv[i], strlen(argv[i]), "argument")) {
      fprintf(stderr, "lua couldn't parse '%s': %s.\n",
                  argv[i], lua_tostring(l, -1));
      lua_pop(l, 1);
    } else {
      if (lua_pcall(l, 0, 1, 0)) {
        fprintf(stderr, "lua couldn't execute '%s': %s.\n",
                  argv[i], lua_tostring(l, -1));
        lua_pop(l, 1);
      } else {
        lua_pop(l, lua_gettop(l));
      }
    }
  }

   for (i = 1; i < argc; ++i) {
    if (luaL_loadbuffer(l, argv[i], strlen(argv[i]), "argument")) {
      fprintf(stderr, "lua couldn't parse '%s': %s.\n",
                  argv[i], lua_tostring(l, -1));
      lua_pop(l, 1);
    } else {
      if (lua_pcall(l, 0, 1, 0)) {
        fprintf(stderr, "lua couldn't execute '%s': %s.\n",
                  argv[i], lua_tostring(l, -1));
        lua_pop(l, 1);
      } else {
        lua_pop(l, lua_gettop(l));
      }
    }
  } #include <stdio.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>
#include "luajit.h"

int main(int argc, char *argv[])
{
  int status;
  lua_State *L;
  
  L = luaL_newstate(); // open Lua
  if (!L) {
    return -1; // Checks that Lua started up
  }
  
  luaL_openlibs(L); // load Lua libraries
  if (argc > 1) {
    status = luaL_loadfile(L, argv[1]);  // load Lua script
    int ret = lua_pcall(L, 0, 0, 0); // tell Lua to run the script
    if (ret != 0) {
      fprintf(stderr, "%s\n", lua_tostring(L, -1)); // tell us what mistake we made
      return 1;
    }
  }

  lua_close(L); // Close Lua
  return 0;
}


