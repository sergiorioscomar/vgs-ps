# Tema PrestaShop basado en Falcon

Este repositorio contiene el **tema desarrollado a partir de Falcon**, utilizado como framework base para PrestaShop 8.x. Se enfoca en la personalización de la ficha de producto y la optimización de la maquetación visual.

📌 **Aclaración importante**  
Este repositorio contiene solo el theme Falcon modificado.  
No incluye el core de PrestaShop, ni la carpeta `vendor`, ni `node_modules`.

---

## 📦 Requisitos

- **PrestaShop**: 8.x (no compatible con PrestaShop 9).
- **Node.js**: **v18.x** o **v20.x** (LTS). Se recomienda el uso de `nvm` para gestionar la versión.
- **npm**: v8.x o superior.
- **Entorno**: Local o servidor con PHP 8.x y MySQL funcionando.

---

## 🚀 Instalación y Uso

### 1️⃣ Instalación del tema
1. Clonar o copiar la carpeta del tema dentro de `/prestashop/themes/falcon`.
2. Instalar los módulos requeridos por Falcon (disponibles en sus releases oficiales) en `/prestashop/modules`.
3. Activar el tema desde el Backoffice: `Diseño → Tema y Logotipo → Activar Falcon`.

> ⚠️ **Importante**: No activar el tema hasta que los módulos de Falcon estén instalados y activos.

### 2️⃣ Compilación de assets
Desde la carpeta `_dev` del tema:

```bash
cd themes/falcon/_dev
nvm use 18 # O 20, según disponibilidad
npm install
```

#### Comandos de Build/Watch:
- **Producción**: `npm run build` (Minifica y optimiza assets).
- **Desarrollo**: `npm run watch` (Compilación en tiempo real durante el desarrollo).

---

## 🎨 Dónde tocar SCSS/TPL

Para modificar la estructura o el diseño, los archivos principales trabajados son:

### Plantillas (Smarty .tpl)
- **Ficha de producto**: `templates/catalog/product.tpl`
- **Componentes de producto**: `templates/catalog/_partials/`
    - `product-details.tpl`
    - `product-prices.tpl`
    - `product-flags.tpl`
    - `product-tabs.tpl`
    - `product-add-to-cart.tpl`

### Estilos (SCSS)
Ruta base: `_dev/src/scss/` (o `_dev/css/` según el caso):
- **Estructura principal**: `theme.scss` y `product.scss`.
- **Personalizados**: 
    - `_custom-product-cards.scss`
    - `_custom-product-page.scss`

---

## 🎥 Video de Presentación

Puedes ver una demostración detallada de las funcionalidades y personalizaciones realizadas en este video:

🔗 **[Ver video de presentación](https://drive.google.com/file/d/1D0um1gfjJ4RLpIoCuQJzYDS8CsHIikA0/view?usp=drive_link)**

---

## 📊 Metodología de Trabajo

Este proyecto fue desarrollado utilizando **metodología ágil con el método KANBAN**, gestionado a través de GitHub Projects:

🔗 **[Ver tablero del proyecto](https://github.com/users/sergiorioscomar/projects/19)**

El flujo de trabajo se organizó en columnas para mantener un seguimiento claro del progreso:
- **Backlog**: Tareas pendientes y por priorizar
- **In Progress**: Trabajo en desarrollo activo
- **Review**: Cambios listos para revisión
- **Done**: Tareas completadas

Esta metodología permitió una mejor organización de las tareas, visualización del progreso y adaptación rápida a los cambios de requerimientos durante el desarrollo.

---

## 🧠 Dificultades y Soluciones

Durante el desarrollo se enfrentaron los siguientes retos técnicos:

1.  **Compatibilidad de Node.js**:
    - *Problema*: Errores de instalación con Node v22.
    - *Solución*: Se identificó que las dependencias de Falcon requieren **Node 16, 18 o 20**. Se integró el uso de `nvm` para switchear de versión rápidamente.
2.  **Código Deprecado**:
    - *Problema*: El framework base de Falcon presentaba algunas funciones o estilos deprecados.
    - *Solución*: Se probo instalar distintas versiones hasta que se logro resolver problemas de compatibilidad.
3.  **Rutas de Webpack (.env)**:
    - *Problema*: Los logos y assets no se visualizaban correctamente tras la compilación.
    - *Solución*: Se configuraron correctamente las variables de entorno en el archivo `.env` dentro de `_dev/` para que Webpack resuelva las rutas de manera absoluta según el entorno.
4.  **Jerarquía de CSS (Especificidad)**:
    - *Problema*: Inicialmente se abusó de `!important` debido a la carga superpuesta de estilos de módulos y PrestaShop.
    - *Solución*: Se reestructuró el orden de importación en `theme.scss` para asegurar que los estilos personalizados sean los últimos en procesarse, permitiendo una cascada limpia sin depender de `!important`.

---

## 🧪 Datos de prueba

El tema está validado utilizando los productos de demostración de PrestaShop (*Hummingbird printed t-shirt*) y tambien se realizo carga de productos identicas al figma. No se requiere base de datos personalizada, solo una instalación estándar de PS 8.x con datos de ejemplo.
