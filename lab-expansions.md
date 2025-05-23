# 📈 Plan de expansión del laboratorio en Azure

Este archivo documenta las fases de evolución de mi laboratorio en Azure, enfocado en aprender Infraestructura como Código (IaC), automatización, DevOps y arquitectura cloud escalable. Cada fase añade componentes típicos de entornos reales, pero optimizados para reducir costes.

---

## ✅ Fase 1 – Base mínima funcional
> Objetivo: Desplegar el entorno con Terraform y configurarlo con Ansible.

- [x] Crear una VNet con 2 subredes (máster / destino)
- [x] Crear VM máster (`Standard B1s`) con:
  - Terraform
  - Ansible
  - Jenkins
- [x] Crear 1–2 VMs destino (`Standard B1s`) para prácticas
- [x] Acceso SSH o RDP (según OS)
- [ ] Crear `terraform.tfvars` para personalización sencilla

---

## 🔐 Fase 2 – Seguridad básica y almacenamiento
> Objetivo: Simular buenas prácticas reales de protección y gestión de datos.

- [ ] Configurar NSGs personalizados
- [ ] Crear un Azure Key Vault (para secretos de Jenkins/Ansible)
- [ ] Montar un Blob Storage (para logs, estado remoto, backups)
- [ ] Activar Log Analytics para VMs
- [ ] Usar tags para organización de recursos

---

## 🚀 Fase 3 – CI/CD y automatización
> Objetivo: Automatizar el ciclo de despliegue y configuración completo.

- [ ] Configurar Jenkinsfile con pipeline para Terraform + Ansible
- [ ] Crear repositorio GitHub vinculado a Jenkins o GitHub Actions
- [ ] Añadir tareas automáticas de validación y despliegue

---

## 🛡️ Fase 4 – Seguridad avanzada y políticas
> Objetivo: Simular gobernanza y cumplimiento empresarial.

- [ ] Activar Azure Defender (versión gratuita)
- [ ] Crear Azure Policy para limitar tamaños o ubicaciones de VMs
- [ ] Usar secretos en Key Vault desde Jenkins (con permisos mínimos)
- [ ] Añadir usuarios RBAC simulados con diferentes roles

---

## 📦 Fase 5 – Contenedores y registro
> Objetivo: Introducir microservicios y despliegue con Docker.

- [ ] Instalar Docker en VM destino
- [ ] Crear Azure Container Registry (ACR)
- [ ] Subir imágenes personalizadas
- [ ] Desplegar Jenkins como contenedor desde ACR (opcional)

---

## ☸️ Fase 6 – Kubernetes (opcional si hay presupuesto)
> Objetivo: Orquestación avanzada con AKS.

- [ ] Crear clúster AKS pequeño
- [ ] Desplegar app de prueba (NGINX, Juice Shop…)
- [ ] Añadir monitoring con Azure Monitor para contenedores

---

## 🌐 Fase 7 – Networking extendido y VPN
> Objetivo: Simular entornos multi-red y acceso remoto.

- [ ] Crear múltiples VNets con peering
- [ ] Simular conexión on-premise con VPN Gateway
- [ ] Probar Azure Bastion como acceso seguro

---

## 📘 Referencias
- [Azure Pricing Calculator](https://azure.microsoft.com/en-us/pricing/calculator/)
- [Terraform Azure Provider Docs](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs)
- [Azure Free Services](https://azure.microsoft.com/en-us/free/)
- [Microsoft Learn – IaC](https://learn.microsoft.com/en-us/training/paths/terraform-infrastructure-as-code/)

---

## ✍️ Notas personales
> Aquí iré dejando reflexiones, mejoras pendientes o ideas para el futuro.

- [ ] Probar migración del entorno a OpenStack si se agota la prueba gratuita
- [ ] Automatizar apagado de VMs cuando no se usen
