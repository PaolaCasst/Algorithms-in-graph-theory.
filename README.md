# Algoritmos de Reconocimiento en Teoría de Gráficas

Este repositorio contiene la implementación y el estudio de **algoritmos de reconocimiento en teoría de gráficas**, desarrollados como parte del **servicio social de la Licenciatura en Ciencias de la Computación** de la **Facultad de Ciencias, UNAM**, iniciado en el **semestre 2026-2**, bajo la dirección del **Dr. César Hernández Cruz**.

El objetivo del proyecto es implementar algoritmos eficientes y correctos para reconocer clases estructurales de gráficas y, cuando la gráfica no pertenece a la clase considerada, producir **no certificados**.

---

## 📚 Algoritmos incluidos

### 🔹 IsCompleteMultipartite
Reconoce si una gráfica simple y conexa es **completa multipartita**.

- **Salida positiva:** una coloración de los vértices que representa la multipartición completa.
- **Salida negativa:** un subconjunto de vértices que induce una **co-\(P_3\)**, obstrucción mínima característica de esta clase.

---

### 🔹 IsSplit
---

### 🔹 Chain graphs
---
### 🔹 Co-chain graphs

---

## 🧠 Enfoque del proyecto

El desarrollo del repositorio enfatiza:

- Correctitud de los algoritmos.
- Generación de **certificados verificables** cuando la gráfica no pertenece a la clase.
- Correspondencia fiel entre pseudocódigo académico (obtenido de las notas adjuntas en **Referencias** y su implementación.

---

## 🛠️ Implementación

Las implementaciones utilizan estructuras estándar para gráficas, en esto caso, las proporcionadas por **SageMath** y están diseñadas para ser claras y verificables.

Cada algoritmo incluye:
- Descripción del problema
- Especificación de entrada y salida
- Implementación

