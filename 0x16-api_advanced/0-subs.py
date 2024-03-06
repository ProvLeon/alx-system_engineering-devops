#!/usr/bin/python3
"""
Function that queries the Reddit API and returns
the number of subscribers for a given subreddit.
"""
import requests


def number_of_subscribers(subreddit):
    """Queries the Reddit API for the number of subscribers."""
    headers = {'User-Agent': 'customUserAgent'}
    url = f"https://www.reddit.com/r/{subreddit}/about.json"
    response = requests.get(url, headers=headers, allow_redirects=False)
    if response.status_code == 200:
        try:
            return response.json()['data']['subscribers']
        except KeyError:
            return 0
    else:
        return 0
