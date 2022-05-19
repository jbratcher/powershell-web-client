# A simple REST API cient to return a JSON repsonse in Powershell

# Set param and defaults
# TODO: 
# Add request type (Invoke-WebRequest with 'web' and Invoke-RestMethod with 'rest')
param (
    [string]$method = "GET",
    [string]$uri = "https://jsonplaceholder.typicode.com/posts",
	[string]$request_type = "rest"
)

# Print endpoint being fetched
Write-Host -Object "Fetching json from: ${uri}"

# Create Params object for REST
$Params = @{
	Method = $method
	Uri = $uri
	Body = $Body
}

Write-Host -Object "Request type: ${request_type}"

# Make REST call, format response, and output to JSON file
if ($request_type -eq "rest") {
	Write-Host -Object "Processing as a rest call"
	# Invoke-RestMethod @Params | ConvertTo-Json | Out-File response.json
} elseif ($request_type -eq "web") {
	Write-Host -Object "Processing as a web request"
	Invoke-WebRequest @Params -UseBasicParsing | Out-File response.txt
} 
