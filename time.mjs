import dayjs from 'dayjs'

export function formatTime(value, offset, pattern) {
  return dayjs(value).add(offset, 'day').format(pattern)
}

export function weekDay(value) {
  return dayjs(value).day()
}
