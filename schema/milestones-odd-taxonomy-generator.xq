xquery version "3.0";

let $hits := doc('/db/apps/tags/taxonomy/taxonomy.xml')//(tag | category)
return
    <valList type="closed">{
        for $hit in $hits
        return 
            <valItem ident="{$hit/id}">
                <gloss>{normalize-space(concat($hit/label, if ($hit/ancestor::tag or $hit/ancestor::category) then concat(' (in ', string-join($hit/ancestor::*/label, ' > '), ').') else (), if ($hit/description or $hit/usage-hint) then concat(' [', string-join(($hit/description, $hit/usage-hint), ' '), ']') else ()))}</gloss>
            </valItem>
}</valList>