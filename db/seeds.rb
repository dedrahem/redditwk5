if Author.count == 0
  zacks = Author.create author_name: 'Zacks Equity'
  dom = Author.create author_name: 'Domenico Montanaro'
  willie = Author.create author_name: 'willie'
  unknown = Author.create author_name: 'unknown'
end

if Post.count == 0
Post.create title: 'US Rig Count Drops to All-Time Low, Tally Totals 476', body: 'In its weekly release, Houston-based oilfield services company Baker Hughes Inc. BHI reported a record fall in the U.S. rig count (number of rigs searching for oil and gas in the country) from the previous week. The decline stemmed from a lower number of gas-directed rigs. The West Texas Intermediate (WTI) oil futures are currently trading at around $39 per barrel.  Weekly Summary: Rigs engaged in exploration and production in the U.S. totaled 476 in the week ended Mar 18, 2016. This was down by four units from the previous week and was an all-time low.', author_id: 'zacks', url: 'https://finance.yahoo.com/news/us-rig-count-drops-time-195007972.html', like: 4
Post.create title: 'Despite The Math, Bernie Sanders Has Already Won', body: 'It does not change the math much, but that might not even be the point. Sanders has a narrow path (laid out below in detail), but he is going to win in lots of places over the next two months in similarly sweeping fashion. Regardless of what happens, when people look back on this 2016 Democratic primary, Sanders will not be dismissed as a gadfly or fringe candidate, as he was treated at the beginning of this campaign. He has already had a major impact on the Democratic Party, on Hillary Clinton and how they talk about the issues he has cared about most for the last 40 years — income inequality, regulation of Wall Street banks and power and influence in politics.', author_id: 'dom', url: 'http://www.npr.org/2016/03/27/472056754/despite-the-math-bernie-sanders-has-already-won', like: 6
Post.create title: '1963 Dender Stratocaster', body: 'A fantastic, pre-CBS, L plate Strat. September 1963 neck date, pots dating to 47th week of 1963. Professionally refinished and refretted. This presents an incredible opportunity to save considerably over an all-original example. The neck is graced with the round-laminate Brazilian rosewood fretboard and clay dots. The logo is a post-refinish replacement, tuners are original, and there is evidence of an installed (and subsequently removed) string tree. Pickups and pots are original, while a five-way switch replaces the original.  Included as well are the original tremolo arm and bridge cover, and case.  A fantastic player with great sounding pickups. Strong output, with plenty of chime. If you have wanted a great pre-CBS Strat to play, that is not priced out of the stratosphere...look no further. Consigned. $9999.', author_id: 'willie', url: 'http://williesguitars.com/index.cfm/used_fender_electrics/2/inventory/7', like: 12
Post.create title: 'What is going on in Singapore', body: 'Aye, yeah, there was a huge lay off in Singapore last month at about 20 percent of the manufacturing and technology got hit. Singapore is not immune to layoffs.  Its getting slim.', author_id: 'unknown', url: 'https://www.thelayoff.com/t/GxH89G4replies', like: 1
end
