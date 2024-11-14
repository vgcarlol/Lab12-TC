-- Función para calcular la potencia n-ésima de cada elemento en la lista
powerList :: Int -> [Int] -> [Int]
powerList n = map (\x -> x ^ n)

-- Ejemplo de uso
main :: IO ()
main = do
    let lista = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    let n = 3
    let resultado = powerList n lista
    print resultado
