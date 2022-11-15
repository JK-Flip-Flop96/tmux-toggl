from toggl import api

import datetime
import time

current = api.TimeEntry.objects.current()

if current is None:
    print("")
else:
    duration = current.duration

    delta = datetime.timedelta(seconds=time.time() + duration)

    hours, remainder = divmod(delta.seconds, 3600)
    minutes, seconds = divmod(remainder, 60)
    output = "祥"

    if hours > 0:
        output += f'{hours}h '
    if minutes > 0 or hours > 0:
        output += f'{minutes}m '
    output += f'{seconds}s'

    print(output)
