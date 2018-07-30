
$HashArguments = @{
    resourceGroupName = "Prod-RG"
    subscriptionId = "ed347077-d367-4401-af11-a87b73bbae0e"
    resourceGroupLocation = "usgovvirginia"
    deploymentName = "Big-IQ_Deployment"
    templateFilePath = "template.json"
    parametersFilePath = "parameters.json"    
}

.\Deploy.ps1 @HashArguments