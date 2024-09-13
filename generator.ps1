 $out = foreach ($mit in $mitre.objects) {if($mit.type -eq "attack-pattern"){$name = $mit.name; $id=$mit.external_references[0].external_id; write-host $name "," $id}}
