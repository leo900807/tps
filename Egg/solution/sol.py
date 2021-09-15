def height_limit(M: int) -> int:
    from __main__ import is_broken
    l, r = 1, M + 1
    while r - l > 1:
        mid = (l + r) // 2
        if is_broken(mid) == 1:
            r = mid
        else:
            l = mid
    return l
