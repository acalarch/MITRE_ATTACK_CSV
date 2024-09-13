#Step 1 read the STIX information into PowerShell
#URL https://raw.githubusercontent.com/mitre-attack/attack-stix-data/master/enterprise-attack/enterprise-attack.json
$mitre = get-content -raw .\enterprise-attack.json | convertfrom-json
 
#Step 2 read the first external reference from each mitre attack-pattern object
$out = foreach ($mit in $mitre.objects) {if($mit.type -eq "attack-pattern"){$name = $mit.name; $id=$mit.external_references[0].external_id; write-host $name "," $id}}
 
