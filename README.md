# Exact-Ti Security Platform — Dashboard

> Interface web da Exact-Ti Security Platform.

## Sobre

O **Exact-Ti Dashboard** é a interface de gerenciamento web da plataforma de segurança Exact-Ti.
Fornece visualização de alertas, análise de eventos, relatórios e configuração centralizada.

## Configuração de Branding

```yaml
# config/opensearch_dashboards.yml
opensearchDashboards.branding:
  applicationTitle: "Exact-Ti Security Platform"
  logo:
    defaultUrl: "/ui/assets/exact-ti-logo.svg"
  mark:
    defaultUrl: "/ui/assets/exact-ti-mark.svg"
customization.enabled: true
```

## Build

```bash
yarn osd bootstrap
yarn build --skip-os-packages
```

## Documentação

[exactti.com](https://exactti.com)

---
*Exact-Ti Cybersecurity — Uberlândia, Brasil*