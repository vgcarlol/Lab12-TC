-- Función para eliminar elementos de una lista según otra lista de elementos a eliminar
removeElements :: Eq a => [a] -> [a] -> [a]
removeElements xs toRemove = filter (\x -> not (x `elem` toRemove)) xs

-- Ejemplo de uso
main :: IO ()
main = do
    let listaInicial = ["rojo", "verde", "azul", "amarillo", "gris", "blanco", "negro"]
    let elementosABorrar = ["amarillo", "café", "blanco"]
    let resultado = removeElements listaInicial elementosABorrar
    print resultado
