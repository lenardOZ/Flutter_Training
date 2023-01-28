# ECIS Portal

### Description

The ECIS Portal application is a web application that displays iApply grant application forms that have been submitted by members of the public.

### Usage

The web site displays what members of the public have entered on the iApply form including copies of any supporting documents. ECIS users can use this data to create/update customers in ECIS and give them the appropriate financial grant.

The site alows users to update the status of the application and to add notes.


## iApply form details

Form Name: 

Form maintainer:

## Architecture

### Front end

- Combined Angular 13 web site and dotnet web API

### Back end

- iApply listener service for downloading of form data and attachments

- Application server

## Build

- Source code is in the XXXXXX branch

### Front end

- Pipeline build is triggered when change is pushed to DEV branch
- The pipleline produces a ECISPortalFrontend[build number].zip file that can be used to deploy the application
- Post build steps 
  - Fix apiURI in main javascript file **[hoping to automate this in pipeline soon]**
  - Edit web.config file to suit environment

### Back end

-To be implemented in DEVOPS

## Environments

|Environment|Web site|Attachment file share|Database|
|-----------|--------|---------------------|--------|
|DEV|http://hsawebdev01:5046|\\\\hsaappvev01\ecisfiles\\ |ECISPortal_DEV|
|TEST||||
|UAT||||
|PROD||||

## Troubleshooting
### Adding users

- The application does not have any user administration functionality, users must be added via a sql script.
