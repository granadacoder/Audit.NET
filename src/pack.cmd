@echo off
cls

del "audit.net\bin\debug\*.nupkg"
del "Audit.NET.JsonNewtonsoftAdapter\bin\debug\*.nupkg"
del "Audit.NET.JsonSystemAdapter\bin\debug\*.nupkg"
del "audit.mvc\bin\debug\*.nupkg"
del "audit.mvc.core\bin\debug\*.nupkg"
del "audit.webapi\bin\debug\*.nupkg"
del "audit.webapi.core\bin\debug\*.nupkg"
del "audit.net.azurecosmos\bin\debug\*.nupkg"
del "audit.net.mongodb\bin\debug\*.nupkg"
del "audit.net.sqlserver\bin\debug\*.nupkg"
del "audit.net.mysql\bin\debug\*.nupkg"
del "audit.entityframework\bin\debug\*.nupkg"
del "audit.entityframework.core\bin\debug\*.nupkg"
del "audit.entityframework.core.v3\bin\debug\*.nupkg"
del "audit.entityframework.Identity\bin\debug\*.nupkg"
del "audit.entityframework.Identity.core\bin\debug\*.nupkg"
del "audit.entityframework.Identity.core.v3\bin\debug\*.nupkg"
del "audit.WCF\bin\debug\*.nupkg"
del "audit.WCF.Client\bin\debug\*.nupkg"
del "audit.net.azurestorage\bin\debug\*.nupkg"
del "audit.net.azurestorageblobs\bin\debug\*.nupkg"
del "audit.dynamicproxy\bin\debug\*.nupkg"
del "audit.net.udp\bin\debug\*.nupkg"
del "audit.net.redis\bin\debug\*.nupkg"
del "Audit.NET.PostgreSql\bin\debug\*.nupkg"
del "Audit.NET.RavenDB\bin\debug\*.nupkg"
del "Audit.FileSystem\bin\debug\*.nupkg"
del "Audit.SignalR\bin\debug\*.nupkg"
del "Audit.NET.log4net\bin\debug\*.nupkg"
del "Audit.NET.Elasticsearch\bin\debug\*.nupkg"
del "Audit.NET.EventLog.Core\bin\debug\*.nupkg"
del "Audit.NET.DynamoDB\bin\debug\*.nupkg"
del "Audit.HttpClient\bin\debug\*.nupkg"
del "Audit.NET.NLog\bin\debug\*.nupkg"
del "Audit.NET.AmazonQLDB\bin\debug\*.nupkg"
del "Audit.NET.Kafka\bin\debug\*.nupkg"
del "Audit.NET.AzureStorageTables\bin\debug\*.nupkg"

copy ..\docs\Audit.NET.snk .\StrongName\Audit.NET.snk /Y

dotnet build "..\Audit.NET.sln" 

dotnet pack "Audit.NET/"
dotnet pack "Audit.NET.JsonNewtonsoftAdapter/"
dotnet pack "Audit.NET.JsonSystemAdapter/"
dotnet pack "Audit.Mvc/"
dotnet pack "Audit.Mvc.Core/"
dotnet pack "Audit.WebApi/"
dotnet pack "Audit.WebApi.Core/"
dotnet pack "Audit.NET.AzureCosmos/"
dotnet pack "Audit.NET.MongoDB/"
dotnet pack "Audit.NET.SqlServer/"
dotnet pack "Audit.NET.MySql/"
dotnet pack "Audit.EntityFramework/"
dotnet pack "Audit.EntityFramework.Core/"
dotnet pack "Audit.EntityFramework.Core.v3/"
dotnet pack "Audit.EntityFramework.Identity/"
dotnet pack "Audit.EntityFramework.Identity.Core/"
dotnet pack "Audit.EntityFramework.Identity.Core.v3/"
dotnet pack "Audit.Wcf/"
dotnet pack "Audit.Wcf.Client/"
dotnet pack "Audit.NET.AzureStorage/"
dotnet pack "Audit.NET.AzureStorageBlobs/"
dotnet pack "Audit.DynamicProxy/"
dotnet pack "Audit.NET.Udp/"
dotnet pack "Audit.NET.Redis/"
dotnet pack "Audit.NET.PostgreSql/"
dotnet pack "Audit.NET.RavenDB/"
dotnet pack "Audit.FileSystem/"
dotnet pack "Audit.SignalR/"
dotnet pack "Audit.NET.log4net/"
dotnet pack "Audit.NET.Elasticsearch/"
dotnet pack "Audit.NET.EventLog.Core/"
dotnet pack "Audit.NET.DynamoDB/"
dotnet pack "Audit.HttpClient/"
dotnet pack "Audit.NET.NLog/"
dotnet pack "Audit.NET.AmazonQLDB/"
dotnet pack "Audit.NET.Kafka/"
dotnet pack "Audit.NET.AzureStorageTables/"

ECHO.
ECHO ADD TAG NOW !
ECHO git tag -a x.x.x -m x.x.x