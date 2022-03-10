fn digitize(mut n: u64) -> Vec<u8> {
    let mut out: Vec<u8> = Vec::new();
    loop {
        out.push((n % 10) as u8);
        n /= 10;

        if n == 0 {
            break;
        }
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
