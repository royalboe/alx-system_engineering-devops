#!/usr/bin/python3
"""
module for function to parses the title of all hot articles, and prints
a sorted count of given keywords (case-insensitive, delimited by spaces
"""


def count_words(subreddit, word_list, instances={}, count=0, after=None):
    """
    Args:
        subreddit: subreddit name
        word_list: a list containing the keywords of all hot articles titles
        instances: a dictionary containing the keywords and their frequency
        count: counter to change prototype
        after: to validate subreddit

    Returns:
        returns a dictionary containing the frequency of certain
        keywords in the hot articles
    """
    import requests

    headers = {'User-Agent': 'User-Agent'}
    parameters = {'after': after,
                  'count': count}
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)
    response = requests.get(url, headers=headers, params=parameters,
                            allow_redirects=False)
    if response.status_code == 200:
        results = response.json().get("data")
        after = results.get("after")
        count += results.get("dist")
        for child in results.get("children"):
            hot_list = child.get("data").get("title").lower().split()
            for word in word_list:
                if word.lower() in hot_list:
                    times = len([article for article in hot_list if
                                article == word.lower()])
                    if instances.get(word.lower()) is None:
                        instances[word.lower()] = times
                    else:
                        instances[word.lower()] += times

        if after is None:
            if len(instances) == 0:
                return
            instances = sorted(instances.items(),
                               key=lambda kv: (-kv[1], kv[0]))
            [print("{}: {}".format(k, v)) for k, v in instances]
        else:
            count_words(subreddit, word_list, instances, count, after)
    return
