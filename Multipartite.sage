#Input : A simple connected graph G with a distinguished vertex r.
#Output: Either a colouring c of V representing a complete multipartition, or a subset of vertices inducing a copy of co-P3.

def IsCompleteMultipartite(G, r):
    Q = []
    i = 0
    C = {}
    P = {}
    C[r] = (0, None)
    P[r] = None

    for v in G.neighbors(r):
        P[v] = r
        Q.append(v) 
    
    x = Q.pop(0)  
    i = i+1
    C[x] = (i,None)

    for y in set(G.neighbors(x)) - {x}:
        if P.get(y) != r:
            C[y] = (0,r)
            Q.append(y)
        P[y] = x

    if len(Q) != len(G)-2:
        for z in set(G.vertices(sort=True)) - {r}:
            if P.get(z) is None:
                return {r, x, z}


    a,b = r, x

    while Q:
        w = Q.pop(0)  

        if C.get(w) != None:
            (j,v) = C.get(w)
            for u in G.neighbors(w):
                if u in C and C[u][0] == j:
                    return {w,u,v}
            if G.degree(w) != G.degree(v):
                for z in G.neighbors(w).symmetric_difference(G.neighbors(v)):
                    return {w, v, z}

        elif not(P.get(w) in {a,b}):
            return {a,b,w}

        elif P.get(w) == a:
            C[w] = (C[b][0], b)
            if G.degree(w) != G.degree(b):
                for z in G.neighbors(w).symmetric_difference(G.neighbors(b)):
                    return {w, b, z}

        else:
            i = i+1
            C[w] = (i,None)
            for u in G.neighbors(w):
                if C.get(u) == None:
                    if P.get(u) == a:
                        C[u] = (C[b][0],b)
                    elif P.get(u) != b:
                        return {a, b, u}
                P[u] = w

        a,b = P.get(w), w 
    print("Q =", Q)
    print("C =", C)
    print("P =", P)
    return C

