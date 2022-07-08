# Objective 2: Understand Terraform's purpose (vs other IaC)

<details><summary>Explain multi-cloud and provider-agnostic benefits</summary>
<p>

Multi-cloud deployment increases fault tolerance. This means in the event of failure there is a more graceful recovery of a region or provider.

</p>
<p>
The benefits of being provider-agnostic means there can be a single configuration that manages many providers.
</p>
</details>

<details><summary>Explain the benefits of state</summary>
  
- **Mapping to the Real World**
  - Terraform requires a database to map Tf(Terraform) config to the real world.
  ex. With state mapping Tf knows resource `resource "aws_instance" "foo"`  represents instance `i-abcd34233`.
- **Metadata**
  - Tf tracks metadata or resource dependencies
  - Tf keeps a copy of the most recent set of dependencies in state. So that correct order of operations can be executed even if an item is deleted from the configuration.
- **Performance** 
  - besides basic mapping Tf also keeps a cache of attribute values for all resources in the state.
  - most optional feature of state, only used to improve performance.
  - small infra: for plan and apply Tf syncs all resources in state
  - large infra: cache state is used because of API rate limits and querying all resources is too slow. Large infra also make use of `-refresh=false` and `-target` flags
- **Syncing**
  - default syncing Tf stores state in a file in the current working directory
  - for teams remote state is used, remote locking is utilized to avoid multiple people running Tf at the same time.

</details>

<details><summary>IaC with Terraform</summary>

<p>

At a high level, Terraform allows operators to use HCL to author files containing definitions of their desired resources on almost any provider (AWS, GCP, GitHub, Docker, [etc](https://www.terraform.io/docs/providers/index.html)) and automates the creation of those resources at the time of apply.

</p>

- **Workflows**
  - Scope: Establish resources that need to be created for the project
  - Author: Create the configuration based on the scoped parameters with HCL
  - Initialize: run `terraform init` to download the provider plug-ins for the project
  - Plan & Apply: run `terraform plan` to verify creation then `terraform apply` to create the resources and state files
- **Advantages of Terraform**
  - Platform Agnostic: allows for management of a mixed environment with the same workflow
  - State Management: State files are created when a project is initialized. state is used to create plans and update our infrastructure. State determines how configuration changes are measured. When a change is made, those changes are compared with the state file to determine resource creation or changes
  - Operator Confidence: `terraform apply` allows for review before changes are applied.
  </details>

---

[⏮️](./../objective-3/iac.md) Objective 1 &nbsp; || &nbsp; Objective 3 [⏩](../objective-3/terraform-basics.md)

[🔙](/README.md) README
