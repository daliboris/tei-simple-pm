import module namespace m='http://www.tei-c.org/tei-simple/models/documentation.odd/latex' at '/db/apps/tei-simple/transform/documentation-latex.xql';

declare variable $xml external;

declare variable $parameters external;

let $options := map {
    "class": "article",
    "section-numbers": false(),
    "font-size": "12pt",
    "styles": ["../transform/documentation.css"],
    "collection": "/db/apps/tei-simple/transform",
    "parameters": if (exists($parameters)) then $parameters else map {}
}
return m:transform($options, $xml)