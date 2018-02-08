import Foundation

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
    func potencia(_ x:Double, elevadoA:Double)->Double {
        return pow(x,elevadoA)
    }
    func tangente(_ num:Double)->Double {
        return tan(num)
    }
    func cosseno(_ num:Double)->Double {
        return cos(num)
    }
    func seno(_ num:Double)->Double {
        return sin(num)
    }
}

let π = Double.pi

var calc3 = Calculadora()
print("\n>> Exercicio 1.2 <<")
print("\nRaiz de 81: " + "\(calc3.raizQuadrada(x:81))")
print("2 ^ 3 = " + "\(calc3.potencia(2, elevadoA:3))")
print("tangente pi/4 = " + "\(calc3.tangente(π/4))")
print("cosseno pi = " + "\(calc3.cosseno(π))")
print("seno pi/2 = " + "\(calc3.seno(π/2))")

/*
# Exercicio 2.1
- Criar uma classe chamada "Retangulo"
- Possuir as propriedades altura e largura
- Construtor para inicializar as suas propriedades
- Calcular área, perímetro e se um retângulo é maior, menor ou igual a outro
*/

class Retangulo {
    var altura:Double
    var largura:Double
    
    init(altura:Double, largura:Double) {
        self.altura = altura
        self.largura = largura
    }

    func area()->Double {
        return self.altura * self.largura
    }
    func perimetro()->Double {
        return (2 * self.altura) + (2 * self.largura) 
    }
    func compara(_ retangulo:Retangulo)->String {
        if(self.area() > retangulo.area()) {
            return "Tenho area maior"
        }
        else if(self.area() < retangulo.area()) {
            return "Tenho area menor"
        }
        else {
            return "Temos area igual"
        }
    }
}

var retangulo = Retangulo(altura:3, largura:5)
print("\n>> Exercicio 2.1 <<")
print("\nArea(3x5): \(retangulo.area())")
print("Perimetro(3x5): \(retangulo.perimetro())")

var ret = Retangulo(altura:3, largura:3)
print("Compara (3x5) versus (3x3): \(retangulo.compara(ret))")
ret = Retangulo(altura:3, largura:6)
print("Compara (3x5) versus (3x6): \(retangulo.compara(ret))")
ret = Retangulo(altura:3, largura:5)
print("Compara (3x5) versus (3x5): \(retangulo.compara(ret))")

/*
# Exercicio 2.2
- Criar um Protocol chamado "Imprimivel", que define o método "imprimir"
- Alterar a classe "Retangulo" para implementa-lo
- Para imprimir um objeto "Retangulo" no console, utilize os caracteres "-", linha horizontal, e "|", linha vertical
*/

protocol Imprimivel {
    func imprimir()
}

class RetanguloImp: Imprimivel {
    var altura:Int
    var largura:Int
    
    init(altura:Int, largura:Int) {
        self.altura = altura
        self.largura = largura
    }
    func imprimir() {
        for _ in stride(from: 1, to: self.largura, by: 1) {
            print(" -", terminator:"")
        }
        print(" - ")
        for _ in stride(from: 0, to: self.altura, by: 1) {
            print("|", terminator:"")
            for _ in stride(from: 0, to: self.largura, by: 1) {
                print("  ", terminator:"")
            }
            print("|")
        }
        for _ in stride(from: 0, to: self.largura, by: 1) {
            print(" -", terminator:"")
        }
    }
}

var retImp = RetanguloImp(altura:4, largura:4)
retImp.imprimir()