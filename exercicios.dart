// Exercício 1: Encontrar o maior elemento em uma lista
int findMax(List<int> list) {
  return list.reduce((curr, next) => curr > next ? curr : next);
}

// Exercício 2: Verificar se uma string é um palíndromo
bool isPalindrome(String str) {
  return str == str.split('').reversed.join('');
}

// Exercício 3: Calcular o fatorial de um número
int factorial(int n) {
  return n <= 1 ? 1 : n * factorial(n - 1);
}

// Exercício 4: Converter uma lista de inteiros em uma lista de strings
List<String> intListToStringList(List<int> list) {
  return list.map((i) => i.toString()).toList();
}

// Exercício 5: Implementar um algoritmo de ordenação (Bubble Sort)
void bubbleSort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int j = 0; j < list.length - i - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;
      }
    }
  }
}

// Exercício 6: Encontrar todos os números primos até um número dado
List<int> findPrimes(int maxNumber) {
  List<int> primes = [];
  for (var i = 2; i <= maxNumber; i++) {
    var isPrime = true;
    for (var j = 2; j <= sqrt(i); j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      primes.add(i);
    }
  }
  return primes;
}

// Exercício 7: Encontrar o número de ocorrências de cada elemento em uma lista
Map<T, int> countOccurrences<T>(List<T> list) {
  var map = <T, int>{};
  for (var element in list) {
    map[element] = (map[element] ?? 0) + 1;
  }
  return map;
}

// Exercício 8: Encontrar o "K-ésimo" menor elemento em uma lista não ordenada
T kthSmallest<T>(List<T> list, int k) {
  list.sort();
  return list[k - 1];
}

// Exercício 9: Calcular a soma de todos os elementos em uma lista
int sum(List<int> list) {
  return list.reduce((value, element) => value + element);
}

// Exercício 10: Inverter uma lista
List<T> reverseList<T>(List<T> list) {
  return list.reversed.toList();
}

// Exercício 11: Calcular a raiz quadrada usando o método de Newton-Raphson
double sqrtNewtonRaphson(double n) {
  double guess = n / 2;
  while ((guess * guess) / n - 1 > 0.001) {
    guess = (guess + n / guess) / 2;
  }
  return guess;
}

// Exercício 12: Verificar se uma lista está ordenada de forma crescente
bool isListSorted(List<int> list) {
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] > list[i + 1]) return false;
  }
  return true;
}

// Exercício 13: Calcular o produto escalar de duas listas de vetores
int dotProduct(List<int> listA, List<int> listB) {
  return List.generate(listA.length, (index) => listA[index] * listB[index])
      .reduce((sum, element) => sum + element);
}

// Exercício 14: Algoritmo para encontrar o número máximo de submatrizes quadradas
// Esta tarefa é avançada e requer algoritmos complexos que não são facilmente implementados em poucas linhas.

// Exercício 15: Calcular o número de maneiras de fazer uma troca de moedas para uma quantia
int countCoinChangeWays(List<int> coins, int amount) {
  List<int> ways = List.filled(amount + 1, 0);
  ways[0] = 1;
  for (int coin in coins) {
    for (int i = coin; i <= amount; i++) {
      ways[i] += ways[i - coin];
    }
  }
  return ways[amount];
}

// Exercício 16: Verificar se duas strings são anagramas uma da outra
bool areAnagrams(String str1, String str2) {
  return (str1.split('')..sort()).join() == (str2.split('')..sort()).join();
}

// Exercício 17: Implementar o algoritmo de Dijkstra para o caminho mais curto em um grafo
// Dijkstra é um algoritmo complexo que requer uma estrutura de dados de grafo para ser implementado.

// Exercício 18: Gerar todos os subconjuntos de uma lista
Set<Set<T>> generateSubsets<T>(List<T> list) {
  Set<Set<T>> allSubsets = Set();
  allSubsets.add(Set());
  for (T element in list) {
    Set<Set<T>> newSubsets = Set();
    for (Set<T> subset in allSubsets) {
      newSubsets.add(subset.union({element}));
    }
    allSubsets = allSubsets.union(newSubsets);
  }
  return allSubsets;
}

// Exercício 19: Encontrar o maior subarray de soma máxima
int maxSubArraySum(List<int> list) {
  int maxSum = list[0], currentSum = list[0];
  for (int i = 1; i < list.length; i++) {
    currentSum = max(list[i], currentSum + list[i]);
    maxSum = max(maxSum, currentSum);
  }
  return maxSum;
}

// Exercício 20: Calcular a sequência de Fibonacci usando recursão e iteração
int fibRecursive(int n) => n <= 2 ? 1 : fibRecursive(n - 1) + fibRecursive(n - 2);

int fibIterative(int n) {
  int a = 0, b = 1;
  for (int i = 2; i < n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}
