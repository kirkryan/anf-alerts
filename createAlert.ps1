# Quick create ANF Alert
# Kirk Ryan - 2019

$Resource = "" #Enter ANF ResourceID here
$ResourceGroup = "ANF"
$QuotaInBytes = 107374182400 #100GB by default
az monitor metrics alert create --name "Volume Quota Exceeded" --condition "avg VolumeLogicalSize > $QuotaInBytes" -g $ResourceGroup --scopes $Resource --description "Volume Quota Exceeded" -o table
