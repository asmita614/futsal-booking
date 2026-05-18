$commitMessage = Read-Host "Enter commit message: "
git add .
git commit -m "$commitMessage"

# Push the commit to the remote repository whatever  it is
$remoteName = git remote | Select-Object -First 1
if ($remoteName) {
    git push $remoteName
} else {
    Write-Host "No remote repository found. Please set up a remote repository to push your commits."
}