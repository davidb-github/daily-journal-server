import sqlite3
import json
from models import Entry


def get_all_entries():
    #open a connection to db
    with sqlite3.connect("./dailyjournal.db") as conn:

        # setup row and cursor
        conn.row_factory = sqlite3.Row
        db_cursor = conn.cursor()

        # select query
        db_cursor.execute("""
        SELECT
            e.id,
            e.date,
            e.concept,
            e.entry,
            e.mood_id
        FROM entries AS e
        """)

        # init an emply list to hold customer representations
        entries = []

        # convert rows of data into python list
        dataset = db_cursor.fetchall()

        # iterate list returned from database
        for row in dataset:
            entry = Entry(row['id'], row['date'], row['concept'],
                          row['entry'], row['mood_id'])

            entries.append(entry.__dict__)

    # Use `json` package to properly serialize list as JSON
    return json.dumps(entries)