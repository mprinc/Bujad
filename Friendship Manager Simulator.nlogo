__includes["main.nls" "main_sasha.nls"]; "main_sinisha.nls"]
@#$#@#$#@
GRAPHICS-WINDOW
331
11
911
612
80
80
3.5404
1
10
1
1
1
0
0
0
1
-80
80
-80
80
1
1
1
ticks
30.0

SLIDER
5
11
182
44
actors-num
actors-num
0
100
30
1
1
NIL
HORIZONTAL

SLIDER
10
484
315
517
friendship-avg-degree
friendship-avg-degree
0.25
5.0
2.2
0.05
1
NIL
HORIZONTAL

BUTTON
236
138
320
171
Reset History
reset-history
NIL
1
T
OBSERVER
NIL
R
NIL
NIL
1

BUTTON
71
138
126
171
1 Tick
do-tick
NIL
1
T
OBSERVER
NIL
O
NIL
NIL
1

BUTTON
128
138
234
171
Continue Ticks
do-tick
T
1
T
OBSERVER
NIL
C
NIL
NIL
1

BUTTON
7
138
69
171
layout
do-layout\ndisplay
T
1
T
OBSERVER
NIL
L
NIL
NIL
1

BUTTON
5
56
320
89
Setup Actors, Friendships, Activities, IAmWhat
setup
NIL
1
T
OBSERVER
NIL
S
NIL
NIL
1

TEXTBOX
11
461
161
481
Friendships:
16
23.0
1

BUTTON
915
14
983
47
Inspect
inspect-system
T
1
T
OBSERVER
NIL
I
NIL
NIL
1

SLIDER
7
630
315
663
Activity-emission-probability
Activity-emission-probability
0
1
0.33
0.01
1
NIL
HORIZONTAL

TEXTBOX
10
608
160
628
Activities:
16
44.0
1

SLIDER
7
666
315
699
Activity-absorption-probability
Activity-absorption-probability
0
1
0.33
0.01
1
NIL
HORIZONTAL

SLIDER
7
241
312
274
actor-price-absorption-limit
actor-price-absorption-limit
0
5
5
0.1
1
NIL
HORIZONTAL

TEXTBOX
10
222
160
242
Actors:
16
105.0
1

SLIDER
8
313
313
346
actor-price-emission-limit
actor-price-emission-limit
0
5
5
0.1
1
NIL
HORIZONTAL

SLIDER
7
275
312
308
Actor-price-absorption-restitution
Actor-price-absorption-restitution
0
10
3.16
0.02
1
NIL
HORIZONTAL

SLIDER
9
348
313
381
Actor-price-emission-restitution
Actor-price-emission-restitution
0
10
2.5
0.02
1
NIL
HORIZONTAL

SLIDER
9
392
312
425
Actor-iamwhat-mean
Actor-iamwhat-mean
0
5
2
0.5
1
WHATs
HORIZONTAL

SWITCH
1504
72
1649
105
Links-show-extra
Links-show-extra
1
1
-1000

SLIDER
921
545
1182
578
Attractiveness-IAmWhats-Ponder
Attractiveness-IAmWhats-Ponder
0
1
0.25
.05
1
NIL
HORIZONTAL

SLIDER
922
580
1183
613
Attractiveness-sociable-Ponder
Attractiveness-sociable-Ponder
0
1
0.6
.05
1
NIL
HORIZONTAL

SLIDER
922
615
1183
648
Attractiveness-Preference-Ponder
Attractiveness-Preference-Ponder
0
1
0.5
.05
1
NIL
HORIZONTAL

SLIDER
7
702
315
735
Activities-number-per-tick
Activities-number-per-tick
0
5
3
1
1
NIL
HORIZONTAL

MONITOR
1704
11
1797
56
Activities Total
activities-num-emitted
0
1
11

SLIDER
922
659
1184
692
Attractiveness-manual-mean
Attractiveness-manual-mean
0
1
0.6
0.02
1
NIL
HORIZONTAL

SLIDER
922
694
1185
727
Attractiveness-manual-standard-deviation
Attractiveness-manual-standard-deviation
0
1
0.3
0.02
1
NIL
HORIZONTAL

INPUTBOX
1380
10
1521
70
Random-generator-initial
0
1
0
Number

SLIDER
923
736
1186
769
Popularity-random-mean
Popularity-random-mean
0
1
0.8
0.02
1
NIL
HORIZONTAL

SLIDER
923
770
1186
803
Popularity-random-standard-deviation
Popularity-random-standard-deviation
0
1
0.5
0.02
1
NIL
HORIZONTAL

CHOOSER
185
10
320
55
Friendships_generator
Friendships_generator
"ER" "Attractiveness"
0

BUTTON
331
614
426
647
Activities/node
measure-activities-per-node
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

SLIDER
10
427
312
460
Actor-iamwhat--standard-deviation
Actor-iamwhat--standard-deviation
0
5
1
0.5
1
WHATs
HORIZONTAL

BUTTON
821
614
911
647
Finalize report
finalize-report
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

CHOOSER
6
91
150
136
Chooser-whom-to-send
Chooser-whom-to-send
"anyone" "friends" "popularity" "attractiveness_manual" "shared_interest" "environmental"
2

CHOOSER
151
91
307
136
Chooser-whom-to-receive
Chooser-whom-to-receive
"anyone" "friends" "popularity" "attractiveness_manual" "shared_interest" "environmental"
0

SLIDER
11
526
313
559
Relationship-Decay
Relationship-Decay
0
5
2
0.2
1
NIL
HORIZONTAL

SLIDER
11
561
313
594
Relationship-Treshold-Connected
Relationship-Treshold-Connected
0
100
51
1
1
NIL
HORIZONTAL

BUTTON
429
614
535
647
Happiness/node
measure-happiness-per-node
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

MONITOR
1791
70
1885
115
Calculation 1
global_calculation_1
17
1
11

MONITOR
1479
710
1546
755
Calc 2
global_calculation_2
17
1
11

MONITOR
1479
757
1547
802
Calc 3
global_calculation_3
17
1
11

INPUTBOX
1527
10
1639
70
Max-activities-num
25000
1
0
Number

SLIDER
8
744
316
777
Activity-atract-relationship-ponder
Activity-atract-relationship-ponder
0
1
0.21
0.01
1
NIL
HORIZONTAL

PLOT
1339
172
1736
526
Stabilized happines in function of the intensity of FM influence
FM (Friendship manager) influence
happiness
0.0
1.0
0.0
1.0
true
false
"" ""
PENS
"default" 1.0 0 -2674135 true "" ""
"pen-2" 1.0 0 -13345367 true "" ""

PLOT
913
172
1337
526
Happiness over time (one graph line for each FM-inensity)
activities no
happiness
0.0
1.0
0.0
1.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" ""

PLOT
1477
536
1728
705
Calc 3
ticks
calc 3
0.0
1.0
0.0
1.0
true
false
"" ""
PENS
"default" 1.0 0 -16777216 true "" ""

MONITOR
1642
10
1702
55
Ticks
ticks
17
1
11

TEXTBOX
923
525
1073
545
Attractiveness:
16
15.0
1

SLIDER
6
793
313
826
Activity-forgetting-time
Activity-forgetting-time
0
500
150
10
1
NIL
HORIZONTAL

MONITOR
1799
11
1883
56
Activities Left
length activities-list
17
1
11

SWITCH
335
667
591
700
Visualization-show-actor-labels
Visualization-show-actor-labels
1
1
-1000

SWITCH
333
704
591
737
Visualization-show-friendship-labels
Visualization-show-friendship-labels
1
1
-1000

SLIDER
5
827
312
860
Time-for-activity-velocity
Time-for-activity-velocity
0
Activity-forgetting-time
5
5
1
NIL
HORIZONTAL

SWITCH
333
742
605
775
Visualization-corelate-actor-to-variables
Visualization-corelate-actor-to-variables
0
1
-1000

SLIDER
1652
57
1789
90
Micro-ticks-per-tick
Micro-ticks-per-tick
1
50
1
1
1
NIL
HORIZONTAL

SWITCH
809
675
899
708
FM?
FM?
0
1
-1000

TEXTBOX
674
655
824
673
Friendship Manager:
14
104.0
1

SLIDER
676
758
902
791
Friendship-Triger-On-Time
Friendship-Triger-On-Time
0
100
12
1
1
NIL
HORIZONTAL

SLIDER
676
794
902
827
Friendship-max-inactive-time
Friendship-max-inactive-time
1
500
21
10
1
NIL
HORIZONTAL

SLIDER
733
829
902
862
FM-check-every-n-ticks
FM-check-every-n-ticks
1
25
6
5
1
NIL
HORIZONTAL

SWITCH
1356
72
1502
105
Last-activity-links
Last-activity-links
0
1
-1000

BUTTON
676
829
731
862
Populate
FM-repopulate
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

OUTPUT
915
51
1189
168
12

BUTTON
984
14
1039
47
Refresh
inspect-refresh-output
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

INPUTBOX
1192
10
1314
70
inspecting-actor-new
33
1
0
Number

BUTTON
1135
10
1190
43
Select
select-actor-by-who
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

BUTTON
207
173
262
206
Measure
do_measurement
NIL
1
T
OBSERVER
NIL
M
NIL
NIL
1

CHOOSER
7
172
201
217
MeasuringCase
MeasuringCase
"default" "sasha" "sinisha" "HappinessByPopularity" "HappinessByWayOfActivitySelection" "HappinessByFriendshipManagerInfluence" "AttractRlzByWayOfActivitySelection"
5

BUTTON
265
173
320
206
Stop
stop-measurement
NIL
1
T
OBSERVER
NIL
NIL
NIL
NIL
1

PLOT
1187
533
1475
805
attractiveness realization
time
attractiveness realization
0.0
10.0
0.0
1.0
true
false
"" ""
PENS
"default" 1.0 0 -2674135 true "" ""
"pen-2" 1.0 0 -13345367 true "" ""

CHOOSER
673
675
806
720
FM-type
FM-type
"TimeToLoose" "Happiness(FlowIn)"
1

SLIDER
203
207
319
240
Measuring_ticks
Measuring_ticks
0
500
500
10
1
NIL
HORIZONTAL

SLIDER
676
722
902
755
FM-intensity
FM-intensity
0
1
1
0.01
1
NIL
HORIZONTAL

@#$#@#$#@
## WHAT IS IT?

Motivation for the project comes from need to model and implement Social networking Service that more closely mimic processes in real-life (offline) social networks particularly in **friendships representing, friendship building and friendship (pro)active management**. 

We also wanted to build the **model of friendship** based on **micro-activities marshaling between actors** (nodes, friends, social network members).

Here we present simulation of network of actors that are connected through network and marshaling activities between each other (in other words they are initiating activities toward others or participating in activites initiated by other actors).

In this model we calculate **happiness** of the social network system in as a sum of happiness of individual actors of the system. We plot happiness over time on plot.


## HOW IT WORKS

### Initialization

Model first loads all possible **activity types** (like, comment, meet, talk) and then it load all possible **interests** (capoeira, reading, dancing, ...).

After that system is populated with **actors** and **friendships** among them. Actors chose **interests** they are interested in and system decides how **popular** they are. It also decides what are **mutual manual attractiveness** between each two actors.

### Iteration

During the each itteration each actor is asked **Activities-number-per-tick** times to innitiate activity. If actor accepts (based on **actor-price-emission-limit** and **Activity-emission-probability**.

After that actor initiator choses the action among action type which he will innitate some oher actor with.

Then the ost exotic part is when actor initiator choses the most adequate activity receiver. Here we have (and will have even more) different type of choices (Chooser-whom-to-send).

Finally, chosen actor decides if he wants to accept activity and participate. That also depends on decission-making function (Choser-whom-to-receive).

## HOW TO USE IT

1. **actor-num** (top-left corner): Choose the number of actors.
1. **Friendship-generator**: Choose a type of friendship generation
1. **Chooser-whom-to-send** (top-right corner):
	1. popularity
	1. attractiveness_manual
	1. (other options are not working yet)
1. **Choser-whom-to-receive**:
	1. anoyone
	1. (other options would end with to little acceptance with the current implementation)
1. **Setup Actors, Friendships, Activities, IAmWhat** (top-left corner): loads all parameters and populates network
1. **Continue Ticks**: starts running the system and similating actors initiating or participating to activities.

### New test with the same network structure

You can start the test again with the same network topolgoy.To do that you need to click on the button "Reset History". After that you can just click "Continues Ticks". You should not click on the button "Setup Actors, Friendships, Activities, IAmWhat".

### System inspection

Click the button **Inspect System** (top-right corner). Whiile the **Inspect System" button is pressed you can click on either actor or interest or activity (flowers to the right) and see the related entities.

### Friendship Manager

**Friendship Manager** stands for a special regime of our actors' behaviour, it means that actors (in the future some part of actors) will monitor friendship activities (better say, system will monitor and offer activity innitiation) and react if there is a critical low level of interactivity.

#### Parameters:

**FM?"** - enable/disable Friendship Management
**Friendship-Triger-On-Time** - How close to the critical innactivity actor is about to proactively react and initiate activity with his friend

**Friendship-max-inactive-time** - Defines what is the expected period of minimal activity between friends. This means, that Friendship manager will warn us if we come close to the **Friendship-max-inactive-time** time of innactivity. 

In order to avoid equal inactivity times for all actors we will use **Attractiveness-manual-mean** and **Attractiveness-manual-standard-deviation**. They are also used in ***Attractiveness Manual** Friendship Strategies*, but in the FM case they are used to distribute **Friendship-max-inactive-time** according to natural distribution.

**FM-check-every-n-ticks** - introduced to reduce processing demands. It will ask to FM processing every FM-check-every-n-ticks ticks.

## What is a good testing scenario?

What we believe is the most interesting moment in this research is how happiness is affects with our friendship management strategies.

Therefore the easiest approach do whole steps as in **HOW TO USE IT"** chapter, but first choose **popularity** strategy and do experiment. After warming up time and first few oscillations, you will get to stable period within about 6000 activities sent (for network of 50 actors).

Then you can do the same experiment but with another strategy. Before starting it you should stop simulation by depressing the button **Continue ticks** and click the button **Reset the history** to avoid the influence of the previous experiment. Finally you can chose new strategy **attractiveness_manual** and finally you can press button **Continue ticks** again and see new results on overall happiness.

### Reproducebility

If you want to reproduce your experiment, set the value Random-generator-initial different to  0. If Random-generator-initial == 0 it will be not taken in consideration and you will get random experiment.
## THINGS TO NOTICE

## EXTENDING THE MODEL


## RELATED MODELS


## COPYRIGHT AND LICENSE

Copyright 20013 Sasha Mile Rudan

![CC BY-NC-SA 3.0](http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png)

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 License.  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons
@#$#@#$#@
default
true
0
Polygon -7500403 true true 150 5 40 250 150 205 260 250

airplane
true
0
Polygon -7500403 true true 150 0 135 15 120 60 120 105 15 165 15 195 120 180 135 240 105 270 120 285 150 270 180 285 210 270 165 240 180 180 285 195 285 165 180 105 180 60 165 15

arrow
true
0
Polygon -7500403 true true 150 0 0 150 105 150 105 293 195 293 195 150 300 150

ball baseball
false
0
Circle -7500403 true true 30 30 240
Polygon -2674135 true false 247 79 243 86 237 106 232 138 232 167 235 199 239 215 244 225 236 234 229 221 224 196 220 163 221 138 227 102 234 83 240 71
Polygon -2674135 true false 53 79 57 86 63 106 68 138 68 167 65 199 61 215 56 225 64 234 71 221 76 196 80 163 79 138 73 102 66 83 60 71
Line -2674135 false 241 149 210 149
Line -2674135 false 59 149 90 149
Line -2674135 false 241 171 212 176
Line -2674135 false 246 191 218 203
Line -2674135 false 251 207 227 226
Line -2674135 false 251 93 227 74
Line -2674135 false 246 109 218 97
Line -2674135 false 241 129 212 124
Line -2674135 false 59 171 88 176
Line -2674135 false 59 129 88 124
Line -2674135 false 54 109 82 97
Line -2674135 false 49 93 73 74
Line -2674135 false 54 191 82 203
Line -2674135 false 49 207 73 226

book
false
0
Polygon -7500403 true true 30 195 150 255 270 135 150 75
Polygon -7500403 true true 30 135 150 195 270 75 150 15
Polygon -7500403 true true 30 135 30 195 90 150
Polygon -1 true false 39 139 39 184 151 239 156 199
Polygon -1 true false 151 239 254 135 254 90 151 197
Line -7500403 true 150 196 150 247
Line -7500403 true 43 159 138 207
Line -7500403 true 43 174 138 222
Line -7500403 true 153 206 248 113
Line -7500403 true 153 221 248 128
Polygon -1 true false 159 52 144 67 204 97 219 82

box
false
0
Polygon -7500403 true true 150 285 285 225 285 75 150 135
Polygon -7500403 true true 150 135 15 75 150 15 285 75
Polygon -7500403 true true 15 75 15 225 150 285 150 135
Line -16777216 false 150 285 150 135
Line -16777216 false 150 135 15 75
Line -16777216 false 150 135 285 75

bug
true
0
Circle -7500403 true true 96 182 108
Circle -7500403 true true 110 127 80
Circle -7500403 true true 110 75 80
Line -7500403 true 150 100 80 30
Line -7500403 true 150 100 220 30

butterfly
true
0
Polygon -7500403 true true 150 165 209 199 225 225 225 255 195 270 165 255 150 240
Polygon -7500403 true true 150 165 89 198 75 225 75 255 105 270 135 255 150 240
Polygon -7500403 true true 139 148 100 105 55 90 25 90 10 105 10 135 25 180 40 195 85 194 139 163
Polygon -7500403 true true 162 150 200 105 245 90 275 90 290 105 290 135 275 180 260 195 215 195 162 165
Polygon -16777216 true false 150 255 135 225 120 150 135 120 150 105 165 120 180 150 165 225
Circle -16777216 true false 135 90 30
Line -16777216 false 150 105 195 60
Line -16777216 false 150 105 105 60

car
false
0
Polygon -7500403 true true 300 180 279 164 261 144 240 135 226 132 213 106 203 84 185 63 159 50 135 50 75 60 0 150 0 165 0 225 300 225 300 180
Circle -16777216 true false 180 180 90
Circle -16777216 true false 30 180 90
Polygon -16777216 true false 162 80 132 78 134 135 209 135 194 105 189 96 180 89
Circle -7500403 true true 47 195 58
Circle -7500403 true true 195 195 58

circle
false
0
Circle -7500403 true true 0 0 300

circle 2
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240

cow
false
0
Polygon -7500403 true true 200 193 197 249 179 249 177 196 166 187 140 189 93 191 78 179 72 211 49 209 48 181 37 149 25 120 25 89 45 72 103 84 179 75 198 76 252 64 272 81 293 103 285 121 255 121 242 118 224 167
Polygon -7500403 true true 73 210 86 251 62 249 48 208
Polygon -7500403 true true 25 114 16 195 9 204 23 213 25 200 39 123

cylinder
false
0
Circle -7500403 true true 0 0 300

dot
false
0
Circle -7500403 true true 90 90 120

face happy
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 255 90 239 62 213 47 191 67 179 90 203 109 218 150 225 192 218 210 203 227 181 251 194 236 217 212 240

face neutral
false
0
Circle -7500403 true true 8 7 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Rectangle -16777216 true false 60 195 240 225

face sad
false
0
Circle -7500403 true true 8 8 285
Circle -16777216 true false 60 75 60
Circle -16777216 true false 180 75 60
Polygon -16777216 true false 150 168 90 184 62 210 47 232 67 244 90 220 109 205 150 198 192 205 210 220 227 242 251 229 236 206 212 183

fish
false
0
Polygon -1 true false 44 131 21 87 15 86 0 120 15 150 0 180 13 214 20 212 45 166
Polygon -1 true false 135 195 119 235 95 218 76 210 46 204 60 165
Polygon -1 true false 75 45 83 77 71 103 86 114 166 78 135 60
Polygon -7500403 true true 30 136 151 77 226 81 280 119 292 146 292 160 287 170 270 195 195 210 151 212 30 166
Circle -16777216 true false 215 106 30

flag
false
0
Rectangle -7500403 true true 60 15 75 300
Polygon -7500403 true true 90 150 270 90 90 30
Line -7500403 true 75 135 90 135
Line -7500403 true 75 45 90 45

flower
false
0
Polygon -10899396 true false 135 120 165 165 180 210 180 240 150 300 165 300 195 240 195 195 165 135
Circle -7500403 true true 85 132 38
Circle -7500403 true true 130 147 38
Circle -7500403 true true 192 85 38
Circle -7500403 true true 85 40 38
Circle -7500403 true true 177 40 38
Circle -7500403 true true 177 132 38
Circle -7500403 true true 70 85 38
Circle -7500403 true true 130 25 38
Circle -7500403 true true 96 51 108
Circle -16777216 true false 113 68 74
Polygon -10899396 true false 189 233 219 188 249 173 279 188 234 218
Polygon -10899396 true false 180 255 150 210 105 210 75 240 135 240

footprint human
true
0
Polygon -7500403 true true 111 244 115 272 130 286 151 288 168 277 176 257 177 234 175 195 174 172 170 135 177 104 188 79 188 55 179 45 181 32 185 17 176 1 159 2 154 17 161 32 158 44 146 47 144 35 145 21 135 7 124 9 120 23 129 36 133 49 121 47 100 56 89 73 73 94 74 121 86 140 99 163 110 191
Polygon -7500403 true true 97 37 101 44 111 43 118 35 111 23 100 20 95 25
Polygon -7500403 true true 77 52 81 59 91 58 96 50 88 39 82 37 76 42
Polygon -7500403 true true 63 72 67 79 77 78 79 70 73 63 68 60 63 65

house
false
0
Rectangle -7500403 true true 45 120 255 285
Rectangle -16777216 true false 120 210 180 285
Polygon -7500403 true true 15 120 150 15 285 120
Line -16777216 false 30 120 270 120

leaf
false
0
Polygon -7500403 true true 150 210 135 195 120 210 60 210 30 195 60 180 60 165 15 135 30 120 15 105 40 104 45 90 60 90 90 105 105 120 120 120 105 60 120 60 135 30 150 15 165 30 180 60 195 60 180 120 195 120 210 105 240 90 255 90 263 104 285 105 270 120 285 135 240 165 240 180 270 195 240 210 180 210 165 195
Polygon -7500403 true true 135 195 135 240 120 255 105 255 105 285 135 285 165 240 165 195

line
true
0
Line -7500403 true 150 0 150 300

line half
true
0
Line -7500403 true 150 0 150 150

link
true
0
Line -7500403 true 150 0 150 300

link direction
true
0
Line -7500403 true 150 150 30 225
Line -7500403 true 150 150 270 225

outlined circle
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 false false -1 -1 301

pentagon
false
0
Polygon -7500403 true true 150 15 15 120 60 285 240 285 285 120

person
false
0
Circle -7500403 true true 110 5 80
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Rectangle -7500403 true true 127 79 172 94
Polygon -7500403 true true 195 90 240 150 225 180 165 105
Polygon -7500403 true true 105 90 60 150 75 180 135 105

person lumberjack
false
0
Polygon -7500403 true true 105 90 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285 180 195 195 90
Polygon -2674135 true false 60 196 90 211 114 155 120 196 180 196 187 158 210 211 240 196 195 91 165 91 150 106 150 135 135 91 105 91
Circle -7500403 true true 110 5 80
Rectangle -7500403 true true 127 79 172 94
Polygon -6459832 true false 174 90 181 90 180 195 165 195
Polygon -13345367 true false 180 195 120 195 90 285 105 300 135 300 150 225 165 300 195 300 210 285
Polygon -6459832 true false 126 90 119 90 120 195 135 195
Rectangle -6459832 true false 45 180 255 195
Polygon -16777216 true false 255 165 255 195 240 225 255 240 285 240 300 225 285 195 285 165
Line -16777216 false 135 165 165 165
Line -16777216 false 135 135 165 135
Line -16777216 false 90 135 120 135
Line -16777216 false 105 120 120 120
Line -16777216 false 180 120 195 120
Line -16777216 false 180 135 210 135
Line -16777216 false 90 150 105 165
Line -16777216 false 225 165 210 180
Line -16777216 false 75 165 90 180
Line -16777216 false 210 150 195 165
Line -16777216 false 180 105 210 180
Line -16777216 false 120 105 90 180
Line -16777216 false 150 135 150 165
Polygon -2674135 true false 100 30 104 44 189 24 185 10 173 10 166 1 138 -1 111 3 109 28

plant
false
0
Rectangle -7500403 true true 135 90 165 300
Polygon -7500403 true true 135 255 90 210 45 195 75 255 135 285
Polygon -7500403 true true 165 255 210 210 255 195 225 255 165 285
Polygon -7500403 true true 135 180 90 135 45 120 75 180 135 210
Polygon -7500403 true true 165 180 165 210 225 180 255 120 210 135
Polygon -7500403 true true 135 105 90 60 45 45 75 105 135 135
Polygon -7500403 true true 165 105 165 135 225 105 255 45 210 60
Polygon -7500403 true true 135 90 120 45 150 15 180 45 165 90

sheep
false
15
Circle -1 true true 203 65 88
Circle -1 true true 70 65 162
Circle -1 true true 150 105 120
Polygon -7500403 true false 218 120 240 165 255 165 278 120
Circle -7500403 true false 214 72 67
Rectangle -1 true true 164 223 179 298
Polygon -1 true true 45 285 30 285 30 240 15 195 45 210
Circle -1 true true 3 83 150
Rectangle -1 true true 65 221 80 296
Polygon -1 true true 195 285 210 285 210 240 240 210 195 210
Polygon -7500403 true false 276 85 285 105 302 99 294 83
Polygon -7500403 true false 219 85 210 105 193 99 201 83

square
false
0
Rectangle -7500403 true true 30 30 270 270

square 2
false
0
Rectangle -7500403 true true 30 30 270 270
Rectangle -16777216 true false 60 60 240 240

star
false
0
Polygon -7500403 true true 151 1 185 108 298 108 207 175 242 282 151 216 59 282 94 175 3 108 116 108

target
false
0
Circle -7500403 true true 0 0 300
Circle -16777216 true false 30 30 240
Circle -7500403 true true 60 60 180
Circle -16777216 true false 90 90 120
Circle -7500403 true true 120 120 60

tree
false
0
Circle -7500403 true true 118 3 94
Rectangle -6459832 true false 120 195 180 300
Circle -7500403 true true 65 21 108
Circle -7500403 true true 116 41 127
Circle -7500403 true true 45 90 120
Circle -7500403 true true 104 74 152

triangle
false
0
Polygon -7500403 true true 150 30 15 255 285 255

triangle 2
false
0
Polygon -7500403 true true 150 30 15 255 285 255
Polygon -16777216 true false 151 99 225 223 75 224

truck
false
0
Rectangle -7500403 true true 4 45 195 187
Polygon -7500403 true true 296 193 296 150 259 134 244 104 208 104 207 194
Rectangle -1 true false 195 60 195 105
Polygon -16777216 true false 238 112 252 141 219 141 218 112
Circle -16777216 true false 234 174 42
Rectangle -7500403 true true 181 185 214 194
Circle -16777216 true false 144 174 42
Circle -16777216 true false 24 174 42
Circle -7500403 false true 24 174 42
Circle -7500403 false true 144 174 42
Circle -7500403 false true 234 174 42

turtle
true
0
Polygon -10899396 true false 215 204 240 233 246 254 228 266 215 252 193 210
Polygon -10899396 true false 195 90 225 75 245 75 260 89 269 108 261 124 240 105 225 105 210 105
Polygon -10899396 true false 105 90 75 75 55 75 40 89 31 108 39 124 60 105 75 105 90 105
Polygon -10899396 true false 132 85 134 64 107 51 108 17 150 2 192 18 192 52 169 65 172 87
Polygon -10899396 true false 85 204 60 233 54 254 72 266 85 252 107 210
Polygon -7500403 true true 119 75 179 75 209 101 224 135 220 225 175 261 128 261 81 224 74 135 88 99

wheel
false
0
Circle -7500403 true true 3 3 294
Circle -16777216 true false 30 30 240
Line -7500403 true 150 285 150 15
Line -7500403 true 15 150 285 150
Circle -7500403 true true 120 120 60
Line -7500403 true 216 40 79 269
Line -7500403 true 40 84 269 221
Line -7500403 true 40 216 269 79
Line -7500403 true 84 40 221 269

x
false
0
Polygon -7500403 true true 270 75 225 30 30 225 75 270
Polygon -7500403 true true 30 75 75 30 270 225 225 270

@#$#@#$#@
NetLogo 5.0.3
@#$#@#$#@
setup
repeat 5 [rewire-one]
@#$#@#$#@
@#$#@#$#@
<experiments>
  <experiment name="vary-rewiring-probability" repetitions="5" runMetricsEveryStep="false">
    <go>rewire-all</go>
    <timeLimit steps="1"/>
    <exitCondition>rewiring-probability &gt; 1</exitCondition>
    <metric>average-path-length</metric>
    <metric>clustering-coefficient</metric>
    <steppedValueSet variable="rewiring-probability" first="0" step="0.025" last="1"/>
  </experiment>
</experiments>
@#$#@#$#@
@#$#@#$#@
default
0.0
-0.2 0 0.0 1.0
0.0 1 1.0 0.0
0.2 0 0.0 1.0
link direction
true
0
Line -7500403 true 150 150 90 180
Line -7500403 true 150 150 210 180

@#$#@#$#@
0
@#$#@#$#@
