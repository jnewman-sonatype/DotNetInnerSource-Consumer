rem Consumer Version
rem requires cyclonedx-dotnet - see https://github.com/CycloneDX/cyclonedx-dotnet
rem requires Sonatype IQ CLI - set path, authentication and IQ URL below

set APP_NAME=%1
set APP_VERSION=%2
set SBOM_FILENAME=%APP_NAME%.cdx.xml

dotnet-cyclonedx --output-format Xml --set-name %APP_NAME% --set-version %APP_VERSION% --filename %SBOM_FILENAME% %APP_NAME%.csproj

java -jar C:\Env\iq-cli\nexus-iq-cli-2.4.2-01.jar -t build -a admin:Welcome2 -s http://host.docker.internal:8070/ -i %APP_NAME% %SBOM_FILENAME%
