func fibonacci(n : Int)
{
    var sequence = [0,1]
    var a = sequence[0]
    var b = sequence[1]
    
    while sequence.count != n
    {
        sequence.append(a + b)
        a = b
        b = sequence[sequence.count - 1]
    }
    
    print(sequence)
}

fibonacci(n: 10)
