??            )   ?      ?  ?   ?  ?   ?  e  %  ?  ?  '  {  A   ?
  @   ?
  D   &  =   k  :   ?  l   ?  ?  Q    ?  ?   ?  ?   {  ~   1  r   ?  t   #  ?   ?  y   B  [   ?  ?     ?   ?  ?   (        '  ?   =  ?   ?  0   i  ?  ?  ?   e  ?   a  ?  ?  
  }  f  ?   I   ?"  T   9#  N   ?#  B   ?#  C    $  y   d$  ?  ?$    ?&  ?   ?'  ?   J(  ?   )  ?   ?)  ?   *  ?   ?*  ?   a+  q   ?+  ?   T,  ?   ?,  ?   ?-  C  |.  /  ?/  ?   ?0  ?   ?1  7   C2     
         	                                                                                                                           		[--beta|-y adaptation-parameter]
		[--gamma|-z adaptation-parameter]
		[--gamma-deviation|-v adaptation-parameter]
		[--smoothing-window|-s fraction-of-season]
		[--smoothing-window-deviation|-S fraction-of-season]
		[--aberrant-reset|-b ds-name]
 		[--step|-t newstep]
		[--daemon|-D address]
		[DEL:ds-name]
		[DS:ds-spec]
		[DELRRA:index]
		[RRA:rra-spec]
		[RRA#index:[+-=]number]
 		[-n|--font FONTTAG:size:font]
		[-m|--zoom factor]
		[-A|--alt-autoscale]
		[-M|--alt-autoscale-max]
		[-G|--graph-render-mode {normal,mono}]
		[-R|--font-render-mode {normal,light,mono}]
		[-B|--font-smoothing-threshold size]
		[-T|--tabwidth width]
		[-E|--slope-mode]
		[-P|--pango-markup]
		[-N|--no-gridfit]
		[-X|--units-exponent value]
		[-L|--units-length value]
		[-S|--step seconds]
		[-f|--imginfo printfstr]
		[-a|--imgformat PNG]
		[-c|--color COLORTAG#rrggbb[aa]]
		[--border width
		[-t|--title string]
		[-W|--watermark string]
		[-Z|--use-nan-for-all-missing-data]
		[DEF:vname=rrd:ds-name:CF]
 		[-x|--x-grid x-axis grid and label]
		[-Y|--alt-y-grid] [--full-size-mode]
		[--left-axis-format format]
		[-y|--y-grid y-axis grid and label]
		[-v|--vertical-label string] [-w|--width pixels]
		[--right-axis scale:shift] [--right-axis-label label]
		[--right-axis-format format]
		[-h|--height pixels] [-o|--logarithmic]
		[-u|--upper-limit value] [-z|--lazy]
		[-l|--lower-limit value] [-r|--rigid]
		[-g|--no-legend] [-d|--daemon <address>]
		[-F|--force-rules-legend]
		[-j|--only-graph]
 		[CDEF:vname=rpn-expression]
		[VDEF:vdefname=rpn-expression]
		[PRINT:vdefname:format]
		[GPRINT:vdefname:format]
		[COMMENT:text]
		[SHIFT:vname:offset]
		[TEXTALIGN:{left|right|justified|center}]
		[TICK:vname#rrggbb[aa][:[fraction][:legend]]]
		[HRULE:value#rrggbb[aa][:legend]]
		[VRULE:value#rrggbb[aa][:legend]]
		[LINE[width]:vname[#rrggbb[aa][:[legend][:STACK]]]]
		[AREA:vname[#rrggbb[aa][:[legend][:STACK]]]]
		[PRINT:vname:CF:format] (deprecated)
		[GPRINT:vname:CF:format] (deprecated)
		[STACK:vname[#rrggbb[aa][:legend]]] (deprecated)
  * cd - changes the current directory

	rrdtool cd new directory
  * ls - lists all *.rrd files in current directory

	rrdtool ls
  * mkdir - creates a new directory

	rrdtool mkdir newdirectoryname
  * pwd - returns the current working directory

	rrdtool pwd
  * quit - closing a session in remote mode

	rrdtool quit
  * resize - alter the length of one of the RRAs in an RRD

	rrdtool resize filename rranum GROW|SHRINK rows
  * tune -  Modify some basic properties of an RRD

	rrdtool tune filename
		[--heartbeat|-h ds-name:heartbeat]
		[--data-source-type|-d ds-name:DST]
		[--data-source-rename|-r old-name:new-name]
		[--minimum|-i ds-name:min] [--maximum|-a ds-name:max]
		[--deltapos|-p scale-value] [--deltaneg|-n scale-value]
		[--failure-threshold|-f integer]
		[--window-length|-w integer]
		[--alpha|-x adaptation-parameter]
 * create - create a new RRD

	rrdtool create filename [--start|-b start time]
		[--step|-s step]
		[--template|-t template-file]
		[--source|-r source-file]
		[--no-overwrite|-O]
		[--daemon|-d address]
		[DS:ds-name:DST:dst arguments]
		[RRA:CF:cf arguments]
 * dump - dump an RRD to XML

	rrdtool dump [--header|-h {none,xsd,dtd}]
		[--no-header|-n]
		[--daemon|-d address]
		file.rrd [file.xml] * fetch - fetch data out of an RRD

	rrdtool fetch filename.rrd CF
		[-r|--resolution resolution]
		[-s|--start start] [-e|--end end]
		[-a|--align-start]
		[-d|--daemon <address>]
 * first - show first update time for RRA within an RRD

	rrdtool first filename.rrd [--rraindex number] [--daemon|-d address]
 * flushcached - flush cached data out to an RRD file

	rrdtool flushcached filename.rrd
		[-d|--daemon <address>]
 * graph - generate a graph from one or several RRD

	rrdtool graph filename [-s|--start seconds] [-e|--end seconds]
 * graphv - generate a graph from one or several RRD
           with meta data printed before the graph

	rrdtool graphv filename [-s|--start seconds] [-e|--end seconds]
 * info - returns the configuration and status of the RRD

	rrdtool info [--daemon|-d <addr> [--noflush|-F]] filename.rrd
 * last - show last update time for RRD

	rrdtool last filename.rrd
		[--daemon|-d address]
 * lastupdate - returns the most recent datum stored for
  each DS in an RRD

	rrdtool lastupdate filename.rrd
		[--daemon|-d address]
 * restore - restore an RRD file from its XML form

	rrdtool restore [--range-check|-r] [--force-overwrite|-f] filename.xml filename.rrd
 * update - update an RRD

	rrdtool update filename
		[--template|-t ds-name:ds-name:...]
		[--skip-past-updates|-s]
		[--daemon|-d <address>]
		time|N:value[:value...]

		at-time@value[:value...]

		[ time:value[:value...] ..]
 * updatev - a verbose version of update
	returns information about values, RRAs, and datasources updated

	rrdtool updatev filename
		[--template|-t ds-name:ds-name:...]
		[--skip-past-updates|-s]
		time|N:value[:value...]

		at-time@value[:value...]

		[ time:value[:value...] ..]
 * xport - generate XML dump from one or several RRD

	rrdtool xport [-s|--start seconds] [-e|--end seconds]
		[-m|--maxrows rows]
		[--step seconds]
		[--enumds] [--json]
		[-d|--daemon address]
		[DEF:vname=rrd:ds-name:CF]
		[CDEF:vname=rpn-expression]
		[XPORT:vname:legend]
 RRDtool %s  Copyright by Tobias Oetiker <tobi@oetiker.ch>
               Compiled %s %s

Usage: rrdtool [options] command command_options
 RRDtool is distributed under the Terms of the GNU General
Public License Version 2. (www.gnu.org/copyleft/gpl.html)

For more information read the RRD manpages
 Valid remote commands: quit, ls, cd, mkdir, pwd
 Project-Id-Version: rrdtool 1.6.0
Report-Msgid-Bugs-To: http://oss.oetiker.ch/rrdtool-trac/newticket
POT-Creation-Date: 2019-02-04 14:32+0100
PO-Revision-Date: 2017-04-12 23:09+0100
Last-Translator: Balázs Úr <urbalazs@gmail.com>
Language-Team: Hungarian <openscope@googlegroups.com>
Language: hu
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Lokalize 2.0
 		[--beta|-y adaptáció-paraméter]
		[--gamma|-z adaptáció-paraméter]
		[--gamma-deviation|-v adaptáció-paraméter]
		[--smoothing-window|-s évad-töredéke]
		[--smoothing-window-deviation|-S évad-töredéke]
		[--aberrant-reset|-b ds-név]
 		[--step|-t új-lépés]
		[--daemon|-D cím]
		[DEL:ds-név]
		[DS:ds-spec]
		[DELRRA:index]
		[RRA:rra-spec]
		[RRA#index:[+-=]szám]
 		[-n|--font BETŰCÍMKE:méret:betűkészlet]
		[-m|--zoom tényező]
		[-A|--alt-autoscale]
		[-M|--alt-autoscale-max]
		[-G|--graph-render-mode {normal,mono}]
		[-R|--font-render-mode {normal,light,mono}]
		[-B|--font-smoothing-threshold méret]
		[-T|--tabwidth szélesség]
		[-E|--slope-mode]
		[-P|--pango-markup]
		[-N|--no-gridfit]
		[-X|--units-exponent érték]
		[-L|--units-length érték]
		[-S|--step másodperc]
		[-f|--imginfo printfstr]
		[-a|--imgformat PNG]
		[-c|--color SZÍNCÍMKE#rrggbb[aa]]
		[--border szélesség
		[-t|--title szöveg]
		[-W|--watermark szöveg]
		[-Z|--use-nan-for-all-missing-data]
		[DEF:vname=rrd:ds-név:CF]
 		[-x|--x-grid x-tengely rács és címke]
		[-Y|--alt-y-grid] [--full-size-mode]
		[--left-axis-format formátum]
		[-y|--y-grid y-tengely rács és címke]
		[-v|--vertical-label szöveg] [-w|--width képpont]
		[--right-axis skála:eltolás] [--right-axis-label címke]
		[--right-axis-format formátum]
		[-h|--height képpont] [-o|--logarithmic]
		[-u|--upper-limit érték] [-z|--lazy]
		[-l|--lower-limit érték] [-r|--rigid]
		[-g|--no-legend] [-d|--daemon <cím>]
		[-F|--force-rules-legend]
		[-j|--only-graph]
 		[CDEF:vnév=rpn-kifejezés]
		[VDEF:vdefnév=rpn-kifejezés]
		[PRINT:vdefnév:formátum]
		[GPRINT:vdefnév:formátum]
		[COMMENT:szöveg]
		[SHIFT:vnév:eltolás]
		[TEXTALIGN:{left|right|justified|center}]
		[TICK:vnév#rrggbb[aa][:[tört][:jelmagyarázat]]]
		[HRULE:érték#rrggbb[aa][:jelmagyarázat]]
		[VRULE:érték#rrggbb[aa][:jelmagyarázat]]
		[LINE[szélesség]:vnév[#rrggbb[aa][:[jelmagyarázat][:STACK]]]]
		[AREA:vnév[#rrggbb[aa][:[jelmagyarázat][:STACK]]]]
		[PRINT:vnév:CF:formátum] (elavult)
		[GPRINT:vnév:CF:formátum] (elavult)
		[STACK:vnév[#rrggbb[aa][:jelmagyarázat]]] (elavult)
  * cd - átváltja az aktuális könyvtárat

	rrdtool cd új-könyvtár
  * ls - az összes *.rrd fájl felsorolása az aktuális könyvtárban

	rrdtool ls
  * mkdir - egy új könyvtárat hoz létre

	rrdtool mkdir új-könyvtárnév
  * pwd - visszatér az aktuális munkakönyvtárral

	rrdtool pwd
  * quit - egy munkamenet lezárása távoli módban

	rrdtool quit
  * resize - az RRA-k egyike hosszának változtatása egy RRD-ben

	rrdtool resize fájlnév rra-szám GROW|SHRINK sorok
  * tune - egy RRD néhány alaptulajdonságának módosítása

	rrdtool tune fájlnév
		[--heartbeat|-h ds-név:szívverés]
		[--data-source-type|-d ds-név:DST]
		[--data-source-rename|-r régi-név:új-név]
		[--minimum|-i ds-név:min] [--maximum|-a ds-név:max]
		[--deltapos|-p méretezés-érték] [--deltaneg|-n méretezés-érték]
		[--failure-threshold|-f egész-szám]
		[--window-length|-w egész-szám]
		[--alpha|-x adaptáció-paraméter]
 * create - egy új RRD létrehozása

	rrdtool create fájlnév [--start|-b kezdő idő]
		[--step|-s lépés]
		[--template|-t sablonfájl]
		[--source|-r forrásfájl]
		[--no-overwrite|-O]
		[--daemon|-d cím]
		[DS:ds-név:DST:dst argumentumok]
		[RRA:CF:cf argumentumok]
 * dump - egy RRD kiírása XML-be

	rrdtool dump [--header|-h {none,xsd,dtd}]
		[--no-header|-n]
		[--daemon|-d cím]
		file.rrd [fájl.xml] * fetch - adatok kikérése egy RRD-ből

	rrdtool fetch fájlnév.rrd CF
		[-r|--resolution felbontás]
		[-s|--start kezdés] [-e|--end vége]
		[-a|--align-start]
		[-d|--daemon <cím>]
 * first - az RRA első frissítési idejének megjelenítése egy RRD-n belül

	rrdtool first fájlnév.rrd [--rraindex szám] [--daemon|-d cím]
 * flushcached - gyorstárazott adatok kiürítése egy RRD-fájlból

	rrdtool flushcached fájlnév.rrd
		[-d|--daemon <cím>]
 * graph - egy grafikon előállítása egy vagy több RRD-ből

	rrdtool graph fájlnév [-s|--start másodperc] [-e|--end másodperc]
 * graphv - egy grafikon előállítása egy vagy több RRD-ből
           a grafikon előtt kiírt metaadatokkal

	rrdtool graphv fájlnév [-s|--start másodperc] [-e|--end másodperc]
 * info - visszatér az RRD beállításával és állapotával

	rrdtool info [--daemon|-d <cím> [--noflush|-F]] fájlnév.rrd
 * last - az RRD utolsó frissítési idejének megjelenítése

	rrdtool last fájlnév.rrd
		[--daemon|-d cím]
 * lastupdate - visszatér egy RRD-ben lévő, az egyes DS-eknél
  tárolt legutóbbi dátummal

	rrdtool lastupdate fájlnév.rrd
		[--daemon|-d cím]
 * restore - egy RRD-fájl visszaállítása az XML-alakjából

	rrdtool restore [--range-check|-r] [--force-overwrite|-f] fájlnév.xml fájlnév.rrd
 * update - egy RRD frissítése

	rrdtool update fájlnév
		[--template|-t ds-név:ds-név:...]
		[--skip-past-updates|-s]
		[--daemon|-d <cím>]
		idő|N:érték[:érték...]

		időpont@érték[:érték...]

		[ idő:érték[:érték...] ...]
 * updatev - a frissítés részletes verziója
	információt ad vissza értékekről, RRA-król és frissített adatforrásokról

	rrdtool updatev fájlnév
		[--template|-t ds-név:ds-név:...]
		[--skip-past-updates|-s]
		idő|N:érték[:érték...]

		időpont@érték[:érték...]

		[ idő:érték[:érték...] ...]
 * xport - XML-kiírás előállítása egy vagy több RRD-ből

	rrdtool xport [-s|--start másodperc] [-e|--end másodperc]
		[-m|--maxrows sorok]
		[--step másodperc]
		[--enumds] [--json]
		[-d|--daemon cím]
		[DEF:vnév=rrd:ds-név:CF]
		[CDEF:vnév=rpn-kifejezés]
		[XPORT:vnév:jelmagyarázat]
 RRDtool %s  Copyright (C) Tobias Oetiker <tobi@oetiker.ch>
               Fordította: %s %s

Használat: rrdtool [kapcsolók] parancs parancs_kapcsolók
 Az RRDtool a GNU General Public License 2. verziója szerint
kerül terjesztésre. (www.gnu.org/copyleft/gpl.html)

További információkért olvassa el az RRD kézikönyv oldalait.
 Érvényes távoli parancsok: quit, ls, cd, mkdir, pwd
 