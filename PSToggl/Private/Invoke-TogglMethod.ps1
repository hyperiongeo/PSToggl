function Invoke-TogglMethod {
    param(
        # The url to call
        [Parameter(Mandatory = $true)]
        [string]
        $UrlSuffix,

        # The optional InputObject to post
        [Parameter(Mandatory = $false)]
        [psobject]
        $InputObject,

        # Request Method, defaults to "GET" if InputObject is empty, "POST" if not
        [Parameter(Mandatory = $false)]
        [ValidateSet("GET", "POST", "PUT", "DELETE")]
        [String]
        $Method
    )

    [string]$auth = $APIKey + ":" + "api_token"
    [string]$authFull = "Basic " + [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($auth))

    $headers = @{
        Authorization = $authFull
    }
    $restUri = $togglUrl + $UrlSuffix
    #TODO: foreach iteration through varname array
    Write-Var UrlSuffix
    Write-Var InputObject
    Write-Var auth
    Write-Var authFull
    Write-Var headers
    Write-Var restUri
    if ($InputObject) {
        if (-not $Method) { $Method = "POST" }
        $answer = Invoke-RestMethod -Uri $restUri -Headers $headers -ContentType "application/json" -Method $Method -Body (ConvertTo-Json $InputObject -Depth 99)
    } else {
        if (-not $Method) { $Method = "GET" }
        $answer = Invoke-RestMethod -Uri $restUri -Headers $headers -ContentType "application/json" -Method $Method
    }

    Write-Var answer
    return $answer.data
}
