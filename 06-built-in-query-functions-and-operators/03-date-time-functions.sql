-- SELECT EXTRACT(MONTH FROM last_checkin)
-- FROM memberships;

-- SELECT EXTRACT(DAY FROM last_checkin)
-- FROM memberships;

-- SELECT EXTRACT(MINUTE FROM last_checkin)
-- FROM memberships;

-- DOW postgresql only
-- SELECT EXTRACT(DOW FROM last_checkin)
-- FROM memberships;

-- WEEKDAY mysql only
-- SELECT WEEKDAY(last_checkin)
-- FROM memberships;

-- CONVERT mysql only
-- SELECT CONVERT(last_checkin, DATE), CONVERT(last_checkin, TIME)
-- FROM memberships;

-- postgresql only
-- SELECT last_checkin::TIMESTAMP::DATE, last_checkin::TIMESTAMP::TIME
-- FROM memberships;