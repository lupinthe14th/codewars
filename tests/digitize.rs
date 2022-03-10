fn digitize(n: u64) -> Vec<u8> {
    let mut out: Vec<u8> = Vec::new();
    let mut num = n;
    if n == 0 {
        out.push(0);
        return out;
    }
    while num > 0 {
        let m = num % 10;
        out.push(m.try_into().unwrap());
        num /= 10;
    }
    out
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_fixed() {
        assert_eq!(digitize(35231), vec![1, 3, 2, 5, 3]);
        assert_eq!(digitize(0), vec![0]);
    }
}
