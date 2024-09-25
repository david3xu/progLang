tweep(jill).
tweep(eric).
tweep(jose).
tweep(joe).
tweep(anna).

tweet(gossip).
tweet(policy).
tweet(declaration).
tweet(greeting).
tweet(screed).

tweets(jill, greeting).
tweets(anna, gossip).

follows(eric, jill).
follows(joe, anna).
follows(eric, joe).
follows(jill, joe).

fan(joe, anna).
fan(eric, joe).

retweets(Fan, What) :-
    tweets(Star, What),
    fan(Fan, Star).

says(Tweep, What) :-
    tweets(Tweep, What); % OR
    retweets(Tweep, What).

receives(Tweep, What) :-
    tweets(Tweep, What);
    says(Who, What),
    follows(Tweep, Who).