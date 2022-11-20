fn find_multiples(n: u32, limit: u32) -> Vec<u32> {
    let mut out: Vec<u32> = Vec::new();
    let mut i = 2;
    let mut num = n;
    while num <= limit {
        out.push(num);
        num = n * i;
        i += 1;
    }
    out
}

#[cfg(test)]
mod tests {
    use super::find_multiples;

    #[test]
    fn basic_test() {
        assert_eq!(find_multiples(1, 2), [1, 2]);
        assert_eq!(find_multiples(5, 7), [5]);
        assert_eq!(find_multiples(4, 27), [4, 8, 12, 16, 20, 24]);
        assert_eq!(find_multiples(11, 54), [11, 22, 33, 44]);
        assert_eq!(find_multiples(5, 25), [5, 10, 15, 20, 25]);
    }
}
