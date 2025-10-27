Param(
  [int]$Port = 4000,
  [string]$Host = "127.0.0.1"
)

if ($env:PORT) { $Port = [int]$env:PORT }
if ($env:HOST) { $Host = $env:HOST }

try {
  bundle check *> $null
  if (-not $?) {
    Write-Host "Installing gems (bundle install)..."
    bundle install
  }
} catch {
  # If bundler isn't available, surface the error
}

Write-Host "Starting Jekyll at http://$Host:$Port (live reload, incremental)"
bundle exec jekyll serve --livereload --incremental -H $Host -P $Port @args

