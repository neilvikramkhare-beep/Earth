@echo off
echo ========================================================
echo       Deploying Earth Online Compiler to Google Cloud
echo ========================================================
echo.
echo Make sure you have installed the Google Cloud CLI (gcloud)
echo and have logged in using 'gcloud auth login'.
echo.

set PROJECT_ID=your-google-cloud-project-id
echo Set your Google Cloud Project ID (e.g. earth-lang-1234):
set /p PROJECT_ID="Project ID: "

echo.
echo Configuring gcloud to use project %PROJECT_ID%...
gcloud config set project %PROJECT_ID%

echo.
echo Submitting build to Google Cloud Build...
gcloud builds submit --tag gcr.io/%PROJECT_ID%/earth-playground

echo.
echo Deploying container to Google Cloud Run...
gcloud run deploy earth-playground ^
  --image gcr.io/%PROJECT_ID%/earth-playground ^
  --platform managed ^
  --region us-central1 ^
  --allow-unauthenticated

echo.
echo Deployment complete! Check the URL above to access your Earth online compiler.
pause
