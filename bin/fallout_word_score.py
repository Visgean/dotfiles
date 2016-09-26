#!/usr/bin/env python

import sys
import operator
from collections import Counter

def highess_likeness(words):
    letter_count = Counter(''.join(words))
    word_score = [
        [word, sum([letter_count[l] for l in word])]
        for word in words
    ]
    return sorted(word_score, key=operator.itemgetter(1), reverse=True)

def letters_in_common(first, second):
    return [l for l in first if l in second]


def filter_similars(word_typed, likeness_returned, words):
    return [word for word in words
            if len(letters_in_common(word_typed, word)) == likeness_returned]

print letters_in_common('male', 'belt')

words = sys.argv[1:]
for word, score in highess_likeness(words):
    print word, score


for i in range(4):
    word_typed = raw_input('Word typed: ')
    score = int(raw_input('Score: '))
    words.remove(word_typed)
    words = filter_similars(word_typed, score, words)
    print words
