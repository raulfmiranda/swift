/*
# Exercicio 1.1
- Criar uma classe chamada Calculadora
- Suportar as quatro operacoes basicas
- Possuir um construtor que recebe um valor inicial
- Imprimir no console o log de cada operacao executada
*/

class Calculadora {
    
    var primeiroNum:Double
    var segundoNum:Double
    
    init() {
        primeiroNum = 0
        segundoNum = 0
    }
    
    init(_ num1:Double, _ num2:Double) {
        primeiroNum = num1
        segundoNum = num2
    }
    
    func adiciona()->Double {
        return primeiroNum + segundoNum
    }
    
    func adiciona(_ num: Double, mais: Double)->Double {
        return num + mais 
    }
    
    func subtrai()->Double {
        return primeiroNum - segundoNum
    }
    
    func subtrai(_ num:Double, menos:Double)->Double {
        return num - menos
    }
    
    func multiplica()->Double {
        return primeiroNum * segundoNum
    }
    
    func multiplica(_ num:Double, por:Double)->Double {
        return num * por
    }
    
    func divide()->Double {
        return primeiroNum / segundoNum
    }
    
    func divide(_ num:Double, por:Double)->Double {
        return num / por
    }
}

print(">> Exercicio 1.1 <<")
print("\nConstrutor sem parametros: ")
var calc1 = Calculadora()
print("3 + 5 = " + "\(calc1.adiciona(3, mais: 5))")
print("9 - 2 = " + "\(calc1.subtrai(9, menos: 2))")
print("3 * 4 = " + "\(calc1.multiplica(3, por: 4))")
print("8 / 4 = " + "\(calc1.divide(8, por: 4))")
print("\nConstrutor com parametros: ")
var calc2 = Calculadora(4,4)
print("4 + 4 = " + "\(calc2.adiciona())")
print("4 - 4 = " + "\(calc2.subtrai())")
print("4 * 4 = " + "\(calc2.multiplica())")
print("4 / 4 = " + "\(calc2.divide())")

/*
# Exercicio 1.2
- Criar uma Extension para a classe "Calculadora" para adicionar novas operações:
- Raiz quadrada
- Potência
- Tangente, cosseno, seno
*/

extension Calculadora {
    func raizQuadrada(x:Double)->Double {
        return x.squareRoot()
    }

}

var calc3 = Calculadora()
print("\n>> Exercicio 1.2 <<")
print("\nRaiz Quadrada de 81: " + "\(calc3.raizQuadrada(x:81))")

