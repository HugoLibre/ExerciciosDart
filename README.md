# Exercícios Dart

Este repositório contém uma coleção de exercícios escritos em Dart para praticar conceitos básicos de programação.

## Índice

- [Maior Elemento em uma Lista](#maior-elemento-em-uma-lista)
- [Palíndromo](#palíndromo)
- [Fatorial](#fatorial)
- [Conversão de Listas](#conversão-de-listas)
- [Ordenação](#ordenação)
- ... (e assim por diante para cada exercício)

## Maior Elemento em uma Lista

Este programa encontra o maior elemento em uma lista de inteiros.

```dart
int findMax(List<int> list) => list.reduce((a, b) => a > b ? a : b);
Palíndromo

Verifica se uma string fornecida é um palíndromo.

dart

bool isPalindrome(String s) => s == s.split('').reversed.join('');

Fatorial

Calcula o fatorial de um número inteiro não negativo.

dart

int factorial(int n) => n <= 1 ? 1 : n * factorial(n - 1);

Conversão de Listas

Converte uma lista de inteiros em uma lista de strings.

dart

List<String> intListToStringList(List<int> list) => list.map((i) => i.toString()).toList();

Ordenação

Implementa o algoritmo de ordenação Bubble Sort para ordenar uma lista de inteiros.

dart

void bubbleSort(List<int> list) {
  // Código para Bubble Sort aqui
}
