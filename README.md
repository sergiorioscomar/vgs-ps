# Tema PrestaShop basado en Falcon

Este repositorio contiene **únicamente el tema desarrollado a partir de Falcon**, utilizado como framework base para PrestaShop 8.x.

📌 **Aclaración importante**  
Este repositorio contiene solo el theme Falcon modificado.  
No incluye el core de PrestaShop, ni la carpeta `vendor`, ni `node_modules`.

---

## 📦 Requisitos

- PrestaShop **8.x** (no compatible con PrestaShop 9)
- Node.js (versión compatible según Falcon)
- npm
- Entorno local o servidor con PHP y MySQL funcionando

---

## 🚀 Instalación del tema

### 1️⃣ Copiar el theme
Clonar este repositorio o copiar la carpeta del tema dentro de:

```
/prestashop/themes/falcon
```

---

### 2️⃣ Instalar módulos requeridos por Falcon
Falcon requiere algunos módulos propios para funcionar correctamente.

1. Descargar los módulos desde los **Releases oficiales** del repositorio de Falcon.
2. Copiarlos dentro de:
```
/prestashop/modules
```
3. Desde el Backoffice de PrestaShop, instalar y activar los módulos requeridos.

> ⚠️ Importante: no activar el theme hasta que los módulos estén instalados.

---

### 3️⃣ Activar el theme
Desde el Backoffice de PrestaShop:

```
Diseño → Tema y Logotipo → Activar Falcon
```

---

## 🎨 Compilación de estilos (SCSS)

Falcon utiliza Webpack para la compilación de estilos y assets.

### 4️⃣ Instalar dependencias
Desde la carpeta `_dev` del theme:

```bash
cd themes/falcon/_dev
npm install
```

---

### 5️⃣ Compilar assets

#### Build (producción)
```bash
npm run build
```

#### Desarrollo (watch)
```bash
npm run watch
```

Los estilos SCSS se compilan automáticamente y se reflejan en el theme activo.

---

## 🧩 Estructura del desarrollo

- `templates/`  
  Plantillas Smarty (.tpl) modificadas para:
  - Página de categoría
  - Tarjeta de producto
  - Ficha de producto

- `_dev/src/scss/`  
  Estilos SCSS personalizados, compilados vía Webpack.

---

## 🧪 Datos de prueba

Para el desarrollo y validación se utilizan los **productos de demostración** incluidos por defecto en PrestaShop (por ejemplo: *Hummingbird printed t-shirt*).

No es necesario crear productos personalizados para esta prueba.

---

## ⚠️ Consideraciones técnicas

- Se mantiene la **funcionalidad nativa de PrestaShop**:
  - Añadir al carrito
  - Combinaciones de productos
  - Actualización dinámica de precio e imagen
- No se utilizan constructores visuales ni módulos de maquetación visual.
- Todo el desarrollo se realiza mediante archivos `.tpl` y `.scss`.

---

## 🧠 Notas finales

Este proyecto está enfocado en la maquetación y adaptación visual del theme, respetando la arquitectura y el comportamiento estándar de PrestaShop.

---

📄 **Resumen clave**  
Este repositorio contiene únicamente el theme Falcon modificado, excluyendo el core de PrestaShop y las dependencias generadas (`node_modules`).
