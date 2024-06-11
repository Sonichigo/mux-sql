keploy gen --sourceFilePath="main.go" \
           --testFilePath="main_test.go" \
           --testCommand="go test -v ./... -coverprofile=coverage.out && gocov convert coverage.out | gocov-xml > coverage.xml" \
           --coverageReportPath="/workspaces/album-api/coverage.xml" \
           --litellmUrl "https://keploy-ai-demos.openai.azure.com/"