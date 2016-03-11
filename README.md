# WindowsExplorerExtensions
e.g. right click context menu extension for rhash 

###quickstart

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
* use the ``..echo_args.reg`` and  ``echo_args.bat`` for experiments with the args
* To put ``pause`` is helps debugging, see [rhash_pause.bat](rhash_pause.bat)
* Please extend rhash so this whole thing here becomes obsolete :-)


## Donationware

Yes.  

See [LICENSE.md](LICENSE.md)

  
:-)

