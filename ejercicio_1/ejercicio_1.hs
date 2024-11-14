import Data.List (sortBy)
import Text.Read (readMaybe)

-- Tipo de datos para representar un diccionario de teléfono
type Phone = [(String, String)]

-- Ejemplo de lista de diccionarios
d :: [Phone]
d = [ [("make", "Nokia"), ("model", "216"), ("color", "Black")],
      [("make", "Apple"), ("model", "2"), ("color", "Silver")],
      [("make", "Huawei"), ("model", "50"), ("color", "Gold")],
      [("make", "Samsung"), ("model", "7"), ("color", "Blue")] ]

-- Función para obtener el valor de una clave como un número
getNumericValue :: String -> Phone -> Int
getNumericValue key phone = case lookup key phone >>= readMaybe of
                                Just value -> value
                                Nothing    -> maxBound -- Valor muy alto si no es un número

-- Función para ordenar por clave numérica usando lambda
sortByKey :: String -> [Phone] -> [Phone]
sortByKey key = sortBy (\a b -> compare (getNumericValue key a) (getNumericValue key b))

-- Ejemplo de uso
main :: IO ()
main = do
    let sortedD = sortByKey "model" d
    print sortedD
