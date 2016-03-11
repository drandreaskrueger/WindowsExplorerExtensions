# WindowsExplorerExtensions

I've created a (windows) *rightMouseClick* **context menu** entry which does ~this 

    rhash --sha256 file > file.sha256.txt
    
Intended to save a lot of time. Which it has to - because this here costed a lot of time. :-)

###Quickstart

(1) put .bat into the folder where rhash lives (can probably be improved with some PATH magic)

    copy rhash_toFile.bat C:\ProgramData\chocolatey\lib\rhash\tools\RHash-1.3.3-win64
 
 
(2) read (so that you know I won't destroy your computer), then doubleclick

    registry_context_menu_rhash_sha256.reg
    

(3) right click ANY FILE and chose ``rhash --sha256`` to generate the hash as a ``anyfile.ext.sha256.txt`` file in that folder.


### Some known problems

#### rhash_toFile.bat not found 

If your path in (1) is different, (3) will ask you where. Or you edit (2) before.

#### double spaces

Right click on 

    problematic path filename combination\double  space.txt
    
and choose ``rhash --sha256``.

Happy to learn how to solve that.


### You
* See the REM lines of [rhash_toFile.bat](rhash_toFile.bat)
* use the ``....echo_args.reg`` and  ``echo_args.bat`` for experiments with the args
* Putting ``pause`` helps debugging, see [rhash_pause.bat](rhash_pause.bat)
* Create a version where the .bat file can live anywhere? Or best: No bat file at all (see below).
* Perhaps remove the path from the output file, only the filename should stay.
* Extend rhash.exe so the registry entry can be easier. Suggestion ``-f``-switch for ``rhash.exe -f %1``

### *Newsflash* v0.2.2 - without .bat file! 
I was able to go 3/4 of the way

    registry_context_menu_rhash_sha256_to__sha256.txt_.reg
    
but could not yet find out how to generate the full path in case of spaces in filenames. The contest is started. Can you do it?  

\*g\* 


## Donationware

Yes.  

See [LICENSE.md](LICENSE.md)

  
:-)

