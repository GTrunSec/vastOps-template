# Profiles

```kroki-mermaid
graph TD
  A[ Profiles ] -->| Custom | B( mkdir profiles/name )
  B --> C{ Settings }
  C --> D[ config.yaml ]
  C --> E[ env.file ]
  C --> F[ flake.nix ]
```

# C4 Diagram (ready)

```kroki-PlantUML
@startuml
!include C4_Context.puml

title System Context diagram for Internet Banking System

Person(customer, "Banking Customer", "A customer of the bank, with personal bank accounts.")
System(banking_system, "Internet Banking System", "Allows customers to check their accounts.")

System_Ext(mail_system, "E-mail system", "The internal Microsoft Exchange e-mail system.")
System_Ext(mainframe, "Mainframe Banking System", "Stores all of the core banking information.")

Rel(customer, banking_system, "Uses")
Rel_Back(customer, mail_system, "Sends e-mails to")
Rel_Neighbor(banking_system, mail_system, "Sends e-mails", "SMTP")
Rel(banking_system, mainframe, "Uses")
@enduml
```
