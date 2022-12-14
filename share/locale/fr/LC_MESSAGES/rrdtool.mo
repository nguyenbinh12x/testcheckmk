??             +         ?  ?   ?  ?   ?  e  M  ?  ?  '  ?  A   ?
  @     D   N  =   ?  :   ?  l     ?  y      ?     ?   ?  ~   Y  r   ?  t   K  ?   ?  y   j  [   ?  ?   @  \   ?  ?   $  ?   ?    ?    ?  ?   ?  ?   M  ?   ?  0   ?  ?  ?  ?   p  ?   p  y  ?  ?  x  /  r!  G   ?#  O   ?#  P   :$  H   ?$  :   ?$  l   %  ?  |%    /'  ?   C(  ?   ?(  ?   ?)  {   +*  }   ?*  ?   %+  w   ?+  q   ],  ?   ?,  a   ^-  ?   ?-  ?   M.  8  9/    r0  ?   ?1  ?   '2  ?   ?2  8   ?3                                                                                                                               	      
           		[--beta|-y adaptation-parameter]
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
 * list - returns the list of RRDs

	rrdtool list [--daemon <address>] [--noflush] <dirname>
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
 Valid commands: create, update, updatev, graph, graphv,  dump, restore,
		last, lastupdate, first, info, list, fetch, tune,
		resize, xport, flushcached
 Valid remote commands: quit, ls, cd, mkdir, pwd
 Project-Id-Version: rrdtool 1.7.0
Report-Msgid-Bugs-To: http://oss.oetiker.ch/rrdtool-trac/newticket
POT-Creation-Date: 2019-02-04 14:32+0100
PO-Revision-Date: 2018-02-14 14:16+0100
Last-Translator: Jean-Michel Vourgère <nirgal@debian.org>
Language-Team: English <>
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Lokalize 2.0
 		[--beta|-y paramètre-adaptation]
		[--gamma|-z paramètre-adaptation]
		[--gamma-deviation|-v paramètre-adaptation]
		[--smoothing-window|-s fraction-de-fenêtre]
		[--smoothing-window-deviation|-S fraction-de-fenêtre]
		[--aberrant-reset|-b nom-ds]
 		[--step|-t nouveau-pas]
		[--daemon|-D adresse]
		[DEL:nom-ds]
		[DS:spec-ds]
		[DELRRA:index]
		[RRA:spec-rra]
		[RRA#indice:[+-=]nombre]
 		[-n|--font FONTTAG:taille:police]
		[-m|--zoom facteur]
		[-A|--alt-autoscale]
		[-M|--alt-autoscale-max]
		[-G|--graph-render-mode {normal,mono}]
		[-R|--font-render-mode {normal,light,mono}]
		[-B|--font-smoothing-threshold taille]
		[-T|--tabwidth largeur]
		[-E|--slope-mode]
		[-P|--pango-markup]
		[-N|--no-gridfit]
		[-X|--units-exponent valeur]
		[-L|--units-length valeur]
		[-S|--step secondes]
		[-f|--imginfo chaîne-printf]
		[-a|--imgformat PNG]
		[-c|--color COLORTAG#rrvvbb[aa]]
		[--border largeur
		[-t|--title chaîne]
		[-W|--watermark chaîne]
		[-Z|--use-nan-for-all-missing-data]
		[DEF:vname=rrd:nom-ds:CF]
 		[-x|--x-grid axe-x grille et titre]
		[-Y|--alt-y-grid] [--full-size-mode]
		[--left-axis-format format]
		[-y|--y-grid axe-y grille et titre]
		[-v|--vertical-label chaîne] [-w|--width pixels]
		[--right-axis échelle:décalage] [--right-axis-label titre]
		[--right-axis-format format]
		[-h|--height pixels] [-o|--logarithmic]
		[-u|--upper-limit valeur] [-z|--lazy]
		[-l|--lower-limit valeur] [-r|--rigid]
		[-g|--no-legend] [-d|--daemon <adresse>]
		[-F|--force-rules-legend]
		[-j|--only-graph]
 		[CDEF:vname=expression-rpn]
		[VDEF:vdefname=expression-rpn]
		[PRINT:vdefname:format]
		[GPRINT:vdefname:format]
		[COMMENT:texte]
		[SHIFT:nomv:décalage]
		[TEXTALIGN:{left|right|justified|center}]
		[TICK:nomv#rrvvbb[aa][:[fraction][:légende]]]
		[HRULE:valeur#rrvvbb[aa][:légende]]
		[VRULE:valeur#rrvvbb[aa][:légende]]
		[LINE[largeur]:nomv[#rrvvbb[aa][:[légende][:STACK]]]]
		[AREA:nomv[#rrvvbb[aa][:[legend][:STACK]]]]
		[PRINT:nomv:CF:format] (obsolète)
		[GPRINT:nomv:CF:format] (obsolète)
		[STACK:nomv[#rrvvbb[aa][:légende]]] (obsolète)
  * cd - change le répertoire courant

	rrdtool cd nouveau-répertoire
  * ls - liste tous les fichiers *.rrd dans le répertoire courant

	rrdtool ls
  * mkdir - crée un nouveau répertoire

	rrdtool mkdir nom-nouveau-répertoire
  * pwd - renvoie le nom du répertoire de travail courant

	rrdtool pwd
  * quit - clos une session en mode distant

	rrdtool quit
  * resize - altère la longeur d'un des RRAs dans un RRD

	rrdtool resize fichier numrra GROW|SHRINK lignes
  * tune -  Modifie certaines propriétés élémentaires d'un RRD

	rrdtool tune fichier
		[--heartbeat|-h nom-ds:heartbeat]
		[--data-source-type|-d nom-ds:DST]
		[--data-source-rename|-r ancien-nom:nouveau-nom]
		[--minimum|-i nom-ds:min] [--maximum|-a nom-ds:max]
		[--deltapos|-p valeur-échelle] [--deltaneg|-n valeur-échelle]
		[--failure-threshold|-f entier]
		[--window-length|-w entier]
		[--alpha|-x paramètre-adaptation]
 * create - crée un nouveau RRD

	rrdtool create nom-de-fichier [--start|-b temps-début]
		[--step|-s pas]
		[--template|-t fichier-modèle]
		[--source|-r fichier-source]
		[--no-overwrite|-O]
		[--daemon|-d adresse]
		[DS:nom-ds:DST:arguments-dst]
		[RRA:CF:arguments-cf]
 * dump - sauvegarde un RRD en XML

	rrdtool dump [--header|-h {none,xsd,dtd}]
		[--no-header|-n]
		[--daemon|-d adresse]
		fichier.rrd [fichier.xml] * fetch - récupère des données depuis un RRD

	rrdtool fetch fichier.rrd CF
		[-r|--resolution résolution]
		[-s|--start début] [-e|--end fin]
		[-a|--align-start]
		[-d|--daemon <adresse>]
 * first - renvoie le temps de première mise à jour de RRA dans un RRD

	rrdtool first fichier.rrd [--rraindex nombre] [--daemon|-d adresse]
 * flushcached - vide le tampon de données dans un fichier RRD

	rrdtool flushcached fichier.rrd
		[-d|--daemon <adresse>]
 * graph - génère un graphique depuis un ou plusieurs RRD

	rrdtool graph fichier [-s|--start secondes] [-e|--end secondes]
 * graphv - génère un graphique depuis un ou plusieurs RRD
           avec affichage des méta-données avant le graphique

	rrdtool graphv fichier [-s|--start secondes] [-e|--end secondes]
 * info - retourne la configuration et le statut d'un RRD

	rrdtool info [--daemon|-d <adr> [--noflush|-F]] fichier.rrd
 * last - affiche l'heure de dernière mise à jour d'un RRD

	rrdtool last nomficher.rrd
		[--daemon|-d adresse]
 * lastupdate - renvoie le datum le plus récent stocké pour
  chaque DS dans un RRD

	rrdtool lastupdate fichier.rrd
		[--daemon|-d adresse]
 * list - renvoie la liste des RRDs

	rrdtool list [--daemon <adresse>] [--noflush] <répertoire>
 * restore - restaure un fichier RRD depuis sa forme XML

	rrdtool restore [--range-check|-r] [--force-overwrite|-f] fichier.xml fichier.rrd
 * update - met à jour un RRD

	rrdtool update fichier
		[--template|-t nom-ds:nom-ds:...]
		[--skip-past-updates|-s]
		[--daemon|-d <adresse>]
		time|N:valeur[:valeur...]

		at-time@valeur[:valeur...]

		[ time:valeur[:valeur...] ..]
 * updatev - une version prolixe d'update
	renvoie les informations à propos des valeurs, RRAs, et sources de données mises à jour

	rrdtool updatev fichier
		[--template|-t nom-ds:nom-ds:...]
		[--skip-past-updates|-s]
		time|N:value[:valeur...]

		at-time@valeur[:valeur...]

		[ time:valeur[:valeur...] ..]
 * xport - génère une copie XML pour un ou plusieurs RRD

	rrdtool xport [-s|--start secondes] [-e|--end secondes]
		[-m|--maxrows lignes]
		[--step secondes]
		[--enumds] [--json]
		[-d|--daemon adresse]
		[DEF:nomv=rrd:nom-ds:CF]
		[CDEF:nomv=expression-rpn]
		[XPORT:nomv:légende]
 RRDtool %s  Copyright de Tobias Oetiker <tobi@oetiker.ch>
               Compilé %s %s

Utilisation: rrdtool [options] commande options_de_commande
 RRDtool est distribué selon les termes de la Licence Publique Générale GNU
Licence publique Version 2. (www.gnu.org/copyleft/gpl.html)

Pour plus d'information, consulter les pages man RRD
 Commandes valides: create, update, updatev, graph, graphv,  dump, restore,
		last, lastupdate, first, info, list, fetch, tune,
		resize, xport, flushcached
 Commandes à distance valides: quit, ls, cd, mkdir, pwd
 