import module namespace m='http://www.tei-c.org/tei-simple/models/beamer.odd' at '/db/apps/tei-simple/transform/beamer-web.xql';

declare variable $xml external;

let $options := map {
    "styles": ["../transform/beamer.css"],
    "collection": "/db/apps/tei-simple/transform"
}
return m:transform($options, $xml)