fn flip(dir: char, cubes: &[u32]) -> Vec<u32> {
    let mut out = cubes.to_vec();
    out.sort_unstable();
    if dir == 'L' {
        out.reverse();
    }
    out
}

#[cfg(test)]
mod tests {
    use super::flip;

    #[test]
    fn sample_tests() {
        assert_eq!(flip('R', &[3, 2, 1, 2]), vec![1, 2, 2, 3]);
        assert_eq!(flip('L', &[1, 4, 5, 3, 5]), vec![5, 5, 4, 3, 1]);
    }
}
