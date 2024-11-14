-- Función para calcular la transpuesta de una matriz usando lambdas
transpose :: [[a]] -> [[a]]
transpose ([]:_) = []
transpose x = map (\row -> head row) x : transpose (map (\row -> tail row) x)

-- Ejemplo de uso
main :: IO ()
main = do
    let x = [[1, 2, 3, 1],
             [4, 5, 6, 0],
             [7, 8, 9, -1]]
    let y = transpose x
    print y
