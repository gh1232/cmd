@echo off

SETLOCAL ENABLEDELAYEDEXPANSION

set st=%time%
for /l %%a in (1,1,%1) do (
for /l %%b in (1,1,%2) do (
for /l %%c in (1,1,%3) do (
 echo 2 )))
set et=%time%
echo %st%  %et%
