#!/usr/bin/python3
"""
Function that queries the Reddit API and prints
the top ten hot posts of a subreddit
"""
import requests


def top_ten(subreddit):
    """
    Queries the Reddit API and prints the titles
    of the first 10 hot posts listed for a given subreddit.
    """
    headers = {'User-Agent': 'Mozilla/5.0'}
    params = {'limit': 10}
    url = f"https://www.reddit.com/r/{subreddit}/hot.json"

    response = requests.get(url,
                            headers=headers, params=params,
                            allow_redirects=False)
    if response.status_code != 200:
        print(None)
    else:
        data = response.json()
        hot_posts = data.get('data', {}).get('children', [])
        if not hot_posts:
            print(None)
        for post in hot_posts:
            print(post.get('data', {}).get('title'))
