pub fn remove_char(s: &str) -> String {
    let l = s.chars().count();
    let mut c = s.chars();
    let mut out = String::from("");
    for i in 0..l {
        if i == 0 || i == l - 1 {
            c.next();
        } else {
            out.push(c.next().unwrap());
        };
    }
    out
}

#[cfg(test)]
mod tests {
    use super::remove_char;

    #[test]
    fn sample_cases() {
        assert_eq!(remove_char("eloquent"), "loquen");
        assert_eq!(remove_char("country"), "ountr");
        assert_eq!(remove_char("person"), "erso");
        assert_eq!(remove_char("place"), "lac");
        assert_eq!(remove_char("ok"), "");
        assert_eq!(remove_char("ooopsss"), "oopss");
    }
}
