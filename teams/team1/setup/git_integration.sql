-- Create API integration with OAuth2
CREATE OR REPLACE API INTEGRATION snowflake_platform_git_integration
  API_PROVIDER = git_https_api
  API_ALLOWED_PREFIXES = ('https://github.com/anjaneyulu1989')
  API_USER_AUTHENTICATION = (TYPE = SNOWFLAKE_GITHUB_APP)
  ENABLED = TRUE;

-- Recreate repo with OAuth integration
CREATE OR REPLACE GIT REPOSITORY SLINGSHOT_TEMP.SETUP.SNOWFLAKE_PLATFORM_REPO
  API_INTEGRATION = snowflake_platform_git_integration
  ORIGIN = 'https://github.com/anjaneyulu1989/snowflake-platform.git';