xcopy "%GITHUB_MIXER_UE_PROJECT_PATH%\%GITHUB_PR_NUMBER%\TestSuite\MixIntegrity\Difference" "www\%GITHUB_PR_NUMBER%" /E /H /C /I

git add --all
git diff-index --quiet HEAD || git commit -m "Scheduled commit"
git push
