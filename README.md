# 🔍 Slither Demo: Analisis estático para smart contracts

Este proyecto es una demostración mínima del uso de **Slither**, una herramienta de análisis estático para contratos inteligentes en Solidity, integrada con el framework de desarrollo **Foundry**.

Incluye un contrato vulnerable intencionadamente para mostrar cómo Slither detecta errores de seguridad en diferentes niveles de criticidad.

---

## Instalación

1. Clona este repositorio:
```bash
  git clone https://github.com/tuusuario/slither-demo.git
  cd slither-demo
```

2. Opcional. Instalar Foundry
```bash
curl -L https://foundry.paradigm.xyz | bash
```

3. Opcional. Instala Slither:
```bash
brew install slither-analyzer
```
NOTA: existen otras formar de instarlo, aqui te dejo el link con sus opcones, https://github.com/crytic/slither?tab=readme-ov-file#how-to-install

## Como analizar
La forma más sencilla de poder analizar todo tu proyecto con Slither es ejecutarlo en el directorio raíz del proyecto:
```bash
slither.
```

por otro lado, también lo puedes hacer analizando un contrato en particular:
```bash
slither src/VulnerableSlitherDemo.sol
```

Además, nos ofrece distintas formas para poderlo hacerlo mas fácil de leer, por ejemplo, podemos usar el comando
```bash
slither . --print human-summary
```
Obtieniendo un resumen más legible:
```bash
Compiled with Foundry
Total number of contracts in source files: 1
Source lines of code (SLOC) in source files: 17
Number of  assembly lines: 0
Number of optimization issues: 0
Number of informational issues: 3
Number of low issues: 0
Number of medium issues: 1
Number of high issues: 2

+-----------------------+-------------+------+------------+--------------+--------------+
| Name                  | # functions | ERCS | ERC20 info | Complex code |     Features |
+-----------------------+-------------+------+------------+--------------+--------------+
| VulnerableSlitherDemo |           3 |      |            |           No |  Receive ETH |
|                       |             |      |            |              |     Send ETH |
|                       |             |      |            |              | Selfdestruct |
+-----------------------+-------------+------+------------+--------------+--------------+
INFO:Slither:. analyzed (1 contracts)
```

## Mas info:
https://crytic.github.io/slither/slither.html


