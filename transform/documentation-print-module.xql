module namespace pml='http://www.tei-c.org/tei-simple/models/documentation.odd/fo/module';

import module namespace m='http://www.tei-c.org/tei-simple/models/documentation.odd/fo' at '/db/apps/tei-simple/transform/documentation-print.xql';

(: Generated library module to be directly imported into code which
 : needs to transform TEI nodes using the ODD this module is based on.
 :)
declare function pml:transform($xml as node()*, $parameters as map(*)?) {

   let $options := map {
       "styles": ["../transform/documentation.css"],
       "collection": "/db/apps/tei-simple/transform",
       "parameters": if (exists($parameters)) then $parameters else map {}
   }
   return m:transform($options, $xml)
};