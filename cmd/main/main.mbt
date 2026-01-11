///|
fn main {
  // Example usage of whenwords
  let now = 1705276800L // 2024-01-15 00:00:00 UTC
  let past = 1705190400L // 2024-01-14 00:00:00 UTC
  println(@lib.timeago(past, reference=now))
  println(@lib.duration(5400L))
  println(@lib.human_date(past, reference=now))
}
