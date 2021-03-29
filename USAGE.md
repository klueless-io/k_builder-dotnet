# K Builder Dotnet

> K Builder Dotnet provides various fluent builders for building dotnet assets, specifically for c#

As a C# Developer, I want to generate dotnet code, projects and solutions quickly, so I build repeating patterns quickly

## Usage

### Sample Classes

#### Create solution

Create a new solution that contains many projects to solve a business problem.

```ruby
solution = builder.new_solution(:pitstop)
```

![](docs/new-solution.png)

#### Create project(s)

Create two projects attached to the solution

![Build Two Projects](docs/builder-two-projects.png)

<table>
<tr>
<td>

![New Project 1](docs/new-project1.png)

</td>
<td>

![New Project 2](docs/new-project2.png)

</td>
</tr>
</table>
