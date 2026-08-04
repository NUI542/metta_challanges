(= (count-valid-pending $queue $banned) 
    (let* (
         ($unprocessed (cdr-atom $queue))
         ($result (subtraction-atom $unprocessed $banned))
         )
         (size-atom $result))
)
!(count-valid-pending (Task1 Task2 Task3 Task4) (Task3))