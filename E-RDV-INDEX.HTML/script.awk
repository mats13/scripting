#!/usr/bin/awk -f
BEGIN {
var_pattern_recherche_ligne = "></head"
var_balise_a_inserer = "<link rel=\"stylesheet\" href=\"/e-rdv/client.css\">"
}
{
if($0 ~ var_pattern_recherche_ligne) {\
var_ligne = $0; \
gsub("><", ">"var_balise_a_inserer"<", var_ligne); \
print var_ligne \
} \
else print $0
}
END {
}
