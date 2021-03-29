# DotNet code, namespaces and dependencies

The following C# code is made up of code blocks, namespaces and dependencies to local projects and nuget packages.

```csharp
namespace CustomerManagement.Api
{
  using System;
  using System.Collections.Generic;
  using Microsoft.AspNetCore.Mvc;

  public class Startup
  {
    public Startup(IConfiguration configuration)
    {
      Configuration = configuration;
    }

    public IConfiguration Configuration { get; }

    // This method gets called by the runtime. Use this method to add services to the container.
    public void ConfigureServices(IServiceCollection services)
    {
      services.AddHealthChecks();
    }

    // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
    public void Configure(
      IApplicationBuilder app,
      IWebHostEnvironment env)
    {
      app.UseHttpsRedirection();
      app.UseRouting();
      app.UseAuthorization();
    }
  }
}
```

## Dependency

Dependency represents any NuGet package or project reference dependencies

Dependency can be used in the following ways:

Add a nuget package to the project in current folder

`dotnet add package {dependency.name}`

Add project to a solution

`dotnet sln MySolution.sln add {dependency.name}.csproj`

Add project reference to a project in the current folder

`dotnet {dependency.name}.csproj`

```ruby
# Ruby configuration for dependency
package_dependency = Dependency.new('Microsoft.EntityFrameworkCore.Design', :nuget)
project_dependency = Dependency.new('CustomerManagement.Api', :project)
```

## Namespace

Represents the namespaces that code relies on and the dependency that the namespace belongs to.

```ruby
# Ruby configuration for Namespace
# May need to support version at some stage
namespace = Namespace.new('Microsoft.AspNetCore.Mvc', 'Microsoft.AspNetCore.Mvc.Core')
```

```bash
# NuGet package
dotnet add package Microsoft.AspNetCore.Mvc.Core -Version 2.2.5
```

```csharp
// Namespace
using Microsoft.AspNetCore.Mvc;
```
## CodeBlock

Represents a block of c# code and any namespaces required by code within the block of code

```ruby
# Ruby configuration for CodeBlock
code = <<~CSHARP

app.UseHttpsRedirection();
app.UseRouting();
app.UseAuthorization();

CSHARP

code_block = CodeBlock(code, namespaces: ['Microsoft.AspNetCore.Mvc'])
```

```csharp
// Required namespace
using Microsoft.AspNetCore.Mvc;

// Block of code
app.UseHttpsRedirection();
app.UseRouting();
app.UseAuthorization();
```