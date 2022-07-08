# Objective 1: Understand Infrastructure as Code (IaC) concepts

## Topics

<details><summary>Explain what IaC is?</summary>
<p>

Infrastructure is described using a high-level configuration syntax. This allows a blueprint of our data center to be versioned and treated as we would any other code. Additionally, infrastructure can be shared and re-used.

</p>
<p>
IaC makes it easy to provision and apply infrastructure configurations, saving time. It standardizes workflows across different infrastructure providers (e.g., VMware, AWS, Azure, GCP, etc.) by using a common syntax across all of them.
</p>
<p>It is infrastructure (CPUs, memory, disk, firewalls, etc.) defined as code within definition files.
</p>
</details>

<details><summary>Describe advantages of IaC patterns?</summary>

- **Can be applied throughout the infrastructure lifecycle**
  - Day 0 : Initial Build
  - Day 1 : OS and application config you apply after the initial build. Includes OS updates, patches, app config.
- **Saves time by making it easy to provision and apply infrastructure configuration.** Workflow is **standardized** across providers wether its VMWare, AWS, Azure, or GCP.
- **It's easy to understand** the intent of infrastructure changes.
- **Iac makes changes idempotent**:
  - The result will always be the same since the same code is being applied
- **Iac makes changes consistent**:
  - The manual work is removed with Iac no more need for system administrators to remotely connect to each machine by executing a series of commands or scripts which can cause inconsistencies based on who executes it
- **Iac makes changes predictable**:
  - code can be tested before applying it to production so results are always predictable
- **Iac allows for mutation in previously defined configurations, making for a more manageable system**

</details>

---

Objective 2 [⏩](../objective-2/iac-2.md)

[🔙](/README.md) README
