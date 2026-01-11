///|
/// Tests for whenwords library
/// Based on tests.yaml from https://github.com/dbreunig/whenwords

// Reference timestamp: 1705276800 = 2024-01-15 00:00:00 UTC

// =============================================================================
// timeago tests
// =============================================================================

///|
test "timeago/just_now_0s" {
  // 0 seconds difference
  let result = timeago(1705276800L, reference=1705276800L)
  inspect!(result, content="just now")
}

///|
test "timeago/just_now_30s" {
  // 30 seconds ago
  let result = timeago(1705276770L, reference=1705276800L)
  inspect!(result, content="just now")
}

///|
test "timeago/just_now_44s" {
  // 44 seconds ago
  let result = timeago(1705276756L, reference=1705276800L)
  inspect!(result, content="just now")
}

///|
test "timeago/1_minute_ago_45s" {
  // 45 seconds ago -> 1 minute ago
  let result = timeago(1705276755L, reference=1705276800L)
  inspect!(result, content="1 minute ago")
}

///|
test "timeago/1_minute_ago_89s" {
  // 89 seconds ago -> 1 minute ago
  let result = timeago(1705276711L, reference=1705276800L)
  inspect!(result, content="1 minute ago")
}

///|
test "timeago/2_minutes_ago" {
  // 90 seconds ago -> 2 minutes ago
  let result = timeago(1705276710L, reference=1705276800L)
  inspect!(result, content="2 minutes ago")
}

///|
test "timeago/5_minutes_ago" {
  // 5 minutes ago
  let result = timeago(1705276500L, reference=1705276800L)
  inspect!(result, content="5 minutes ago")
}

///|
test "timeago/44_minutes_ago" {
  // 44 minutes ago
  let result = timeago(1705274160L, reference=1705276800L)
  inspect!(result, content="44 minutes ago")
}

///|
test "timeago/1_hour_ago_45min" {
  // 45 minutes ago -> 1 hour ago
  let result = timeago(1705274100L, reference=1705276800L)
  inspect!(result, content="1 hour ago")
}

///|
test "timeago/1_hour_ago_89min" {
  // 89 minutes ago -> 1 hour ago
  let result = timeago(1705271460L, reference=1705276800L)
  inspect!(result, content="1 hour ago")
}

///|
test "timeago/2_hours_ago" {
  // 90 minutes ago -> 2 hours ago
  let result = timeago(1705271400L, reference=1705276800L)
  inspect!(result, content="2 hours ago")
}

///|
test "timeago/21_hours_ago" {
  // 21 hours ago
  let result = timeago(1705201200L, reference=1705276800L)
  inspect!(result, content="21 hours ago")
}

///|
test "timeago/1_day_ago_22h" {
  // 22 hours ago -> 1 day ago
  let result = timeago(1705197600L, reference=1705276800L)
  inspect!(result, content="1 day ago")
}

///|
test "timeago/1_day_ago_35h" {
  // 35 hours ago -> 1 day ago
  let result = timeago(1705150800L, reference=1705276800L)
  inspect!(result, content="1 day ago")
}

///|
test "timeago/2_days_ago" {
  // 36 hours ago -> 2 days ago
  let result = timeago(1705147200L, reference=1705276800L)
  inspect!(result, content="2 days ago")
}

///|
test "timeago/25_days_ago" {
  // 25 days ago
  let result = timeago(1703116800L, reference=1705276800L)
  inspect!(result, content="25 days ago")
}

///|
test "timeago/1_month_ago_26d" {
  // 26 days ago -> 1 month ago
  let result = timeago(1703030400L, reference=1705276800L)
  inspect!(result, content="1 month ago")
}

///|
test "timeago/1_month_ago_45d" {
  // 45 days ago -> 1 month ago
  let result = timeago(1701388800L, reference=1705276800L)
  inspect!(result, content="1 month ago")
}

///|
test "timeago/2_months_ago" {
  // 46 days ago -> 2 months ago
  let result = timeago(1701302400L, reference=1705276800L)
  inspect!(result, content="2 months ago")
}

///|
test "timeago/10_months_ago" {
  // ~300 days ago
  let result = timeago(1679356800L, reference=1705276800L)
  inspect!(result, content="10 months ago")
}

///|
test "timeago/1_year_ago_320d" {
  // 320 days ago -> 1 year ago
  let result = timeago(1677628800L, reference=1705276800L)
  inspect!(result, content="1 year ago")
}

///|
test "timeago/1_year_ago_547d" {
  // 547 days ago -> 1 year ago
  let result = timeago(1658016000L, reference=1705276800L)
  inspect!(result, content="1 year ago")
}

///|
test "timeago/2_years_ago" {
  // 548 days ago -> 2 years ago
  let result = timeago(1657929600L, reference=1705276800L)
  inspect!(result, content="2 years ago")
}

///|
test "timeago/future_just_now" {
  // 30 seconds in future
  let result = timeago(1705276830L, reference=1705276800L)
  inspect!(result, content="just now")
}

///|
test "timeago/future_1_minute" {
  // 60 seconds in future
  let result = timeago(1705276860L, reference=1705276800L)
  inspect!(result, content="in 1 minute")
}

///|
test "timeago/future_5_minutes" {
  // 5 minutes in future
  let result = timeago(1705277100L, reference=1705276800L)
  inspect!(result, content="in 5 minutes")
}

///|
test "timeago/future_1_hour" {
  // 1 hour in future
  let result = timeago(1705280400L, reference=1705276800L)
  inspect!(result, content="in 1 hour")
}

///|
test "timeago/future_2_hours" {
  // 2 hours in future
  let result = timeago(1705284000L, reference=1705276800L)
  inspect!(result, content="in 2 hours")
}

// =============================================================================
// duration tests
// =============================================================================

///|
test "duration/0_seconds" {
  let result = duration(0L)
  inspect!(result, content="0 seconds")
}

///|
test "duration/1_second" {
  let result = duration(1L)
  inspect!(result, content="1 second")
}

///|
test "duration/30_seconds" {
  let result = duration(30L)
  inspect!(result, content="30 seconds")
}

///|
test "duration/1_minute" {
  let result = duration(60L)
  inspect!(result, content="1 minute")
}

///|
test "duration/1_minute_30_seconds" {
  let result = duration(90L)
  inspect!(result, content="1 minute, 30 seconds")
}

///|
test "duration/1_hour" {
  let result = duration(3600L)
  inspect!(result, content="1 hour")
}

///|
test "duration/1_hour_30_minutes" {
  let result = duration(5400L)
  inspect!(result, content="1 hour, 30 minutes")
}

///|
test "duration/2_hours_30_minutes" {
  let result = duration(9000L)
  inspect!(result, content="2 hours, 30 minutes")
}

///|
test "duration/1_day" {
  let result = duration(86400L)
  inspect!(result, content="1 day")
}

///|
test "duration/1_day_2_hours" {
  let result = duration(93600L)
  inspect!(result, content="1 day, 2 hours")
}

///|
test "duration/compact_0s" {
  let result = duration(0L, options={ compact: true, max_units: 2 })
  inspect!(result, content="0s")
}

///|
test "duration/compact_1h_30m" {
  let result = duration(5400L, options={ compact: true, max_units: 2 })
  inspect!(result, content="1h 30m")
}

///|
test "duration/compact_2h_30m" {
  let result = duration(9000L, options={ compact: true, max_units: 2 })
  inspect!(result, content="2h 30m")
}

///|
test "duration/max_units_1" {
  let result = duration(5400L, options={ compact: false, max_units: 1 })
  inspect!(result, content="1 hour")
}

///|
test "duration/max_units_3" {
  // 1 day, 2 hours, 30 minutes, 45 seconds
  let result = duration(95445L, options={ compact: false, max_units: 3 })
  inspect!(result, content="1 day, 2 hours, 30 minutes")
}

// =============================================================================
// parse_duration tests
// =============================================================================

///|
test "parse_duration/compact_2h30m" {
  let result = parse_duration("2h30m")
  inspect!(result, content="9000")
}

///|
test "parse_duration/compact_with_space" {
  let result = parse_duration("2h 30m")
  inspect!(result, content="9000")
}

///|
test "parse_duration/verbose" {
  let result = parse_duration("2 hours 30 minutes")
  inspect!(result, content="9000")
}

///|
test "parse_duration/verbose_and" {
  let result = parse_duration("2 hours and 30 minutes")
  inspect!(result, content="9000")
}

///|
test "parse_duration/decimal_hours" {
  let result = parse_duration("2.5 hours")
  inspect!(result, content="9000")
}

///|
test "parse_duration/decimal_h" {
  let result = parse_duration("2.5h")
  inspect!(result, content="9000")
}

///|
test "parse_duration/colon_hm" {
  let result = parse_duration("2:30")
  inspect!(result, content="9000")
}

///|
test "parse_duration/colon_hms" {
  let result = parse_duration("2:30:00")
  inspect!(result, content="9000")
}

///|
test "parse_duration/colon_with_seconds" {
  let result = parse_duration("1:30:45")
  inspect!(result, content="5445")
}

///|
test "parse_duration/1_day" {
  let result = parse_duration("1 day")
  inspect!(result, content="86400")
}

///|
test "parse_duration/1_week" {
  let result = parse_duration("1 week")
  inspect!(result, content="604800")
}

///|
test "parse_duration/mixed" {
  let result = parse_duration("1d 2h 30m")
  inspect!(result, content="95400")
}

///|
test "parse_duration/uppercase" {
  let result = parse_duration("2H30M")
  inspect!(result, content="9000")
}

// =============================================================================
// human_date tests
// =============================================================================

// Reference: 1705276800 = 2024-01-15 00:00:00 UTC (Monday)

///|
test "human_date/today" {
  let result = human_date(1705276800L, reference=1705276800L)
  inspect!(result, content="Today")
}

///|
test "human_date/yesterday" {
  // 2024-01-14
  let result = human_date(1705190400L, reference=1705276800L)
  inspect!(result, content="Yesterday")
}

///|
test "human_date/tomorrow" {
  // 2024-01-16
  let result = human_date(1705363200L, reference=1705276800L)
  inspect!(result, content="Tomorrow")
}

///|
test "human_date/last_weekday" {
  // 2024-01-10 (Wednesday) - 5 days ago
  let result = human_date(1704844800L, reference=1705276800L)
  inspect!(result, content="Last Wednesday")
}

///|
test "human_date/last_friday" {
  // 2024-01-12 (Friday) - 3 days ago
  let result = human_date(1705017600L, reference=1705276800L)
  inspect!(result, content="Last Friday")
}

///|
test "human_date/this_weekday_future" {
  // 2024-01-17 (Wednesday) - 2 days in future
  let result = human_date(1705449600L, reference=1705276800L)
  inspect!(result, content="This Wednesday")
}

///|
test "human_date/same_year" {
  // 2024-02-20
  let result = human_date(1708387200L, reference=1705276800L)
  inspect!(result, content="February 20")
}

///|
test "human_date/different_year" {
  // 2023-06-15
  let result = human_date(1686787200L, reference=1705276800L)
  inspect!(result, content="June 15, 2023")
}

// =============================================================================
// date_range tests
// =============================================================================

///|
test "date_range/same_day" {
  // Same day: 2024-01-15
  let result = date_range(1705276800L, 1705276800L)
  inspect!(result, content="January 15, 2024")
}

///|
test "date_range/same_month" {
  // 2024-01-15 to 2024-01-17
  let result = date_range(1705276800L, 1705449600L)
  inspect!(result, content="January 15–17, 2024")
}

///|
test "date_range/same_year" {
  // 2024-01-15 to 2024-02-20
  let result = date_range(1705276800L, 1708387200L)
  inspect!(result, content="January 15 – February 20, 2024")
}

///|
test "date_range/cross_year" {
  // 2023-12-28 to 2024-01-03
  let result = date_range(1703721600L, 1704240000L)
  inspect!(result, content="December 28, 2023 – January 3, 2024")
}

///|
test "date_range/swapped_inputs" {
  // End before start - should swap
  let result = date_range(1705449600L, 1705276800L)
  inspect!(result, content="January 15–17, 2024")
}
