# DotNetInnerSource-Consumer

## Part two of a two-part minimal example to demonstrate the Sonatype Lifecycle InnerSource Insight feature.

This repository contains the "consumer", a .NET 8.0 console application that references some NuGet components with known vulnerabilities as well as referencing the NuGet .nupkg file created by part one of this example, the "producer".

The first part of this example can be found in the [DotNetInnerSource-Producer](https://github.com/jnewman-sonatype/DotNetInnerSource-Producer) repository.

Note: Pre-built CycloneDX SBOMs and NuGet Package(s) are available in the [DotNetInnerSource](https://github.com/jnewman-sonatype/DotNetInnerSource) repository and can be used to avoid the need to build the two parts of this example.

## Building Notes
Test builds of this repo have been performed with Microsoft Visual Studio 2022 (Community Edition)

The .csproj project file has a definition that runs the `SBOMandScan.cmd` batch script as part of the Release build process to automate creation of the CycloneDX SBOM and then perform the IQ CLI evaluation. 

In order to use this there is a requirement for the additional tools:

- [CycloneDX for .NET](https://github.com/CycloneDX/cyclonedx-dotnet) - required to create the SBOM in CycloneDX XML format for .NET ecosystem applications.

- [Sonatype IQ CLI](https://download.sonatype.com/clm/scanner/latest.jar) - required to perform the Sonatype Lifecycle SCA analysis of the CycloneDX SBOM.

