extensions [nw]

;  actors-num                 ;; number of actors existing in system, used for the initalization of model
;  friendship-avg-degree      ;; average degree of friendships for actors

; http://stackoverflow.com/questions/5830045/including-a-netlogo-source-file-into-another

__includes["friendship_model.nls" "friendship_manager_setup.nls" "friendship_model_activities_diffusion.nls" "friendship_dynamics.nls"]

; from the interface
;------------------------------------------
; Actor-price-absorption-restitution              ; amount of absorption price that actor gains over each tick
; Actor-price-emission-restitution                ; amount of emission price that actor gains over each tick
; Actor-iamwhat-num                               ; number of IAmWhats that each actor is interested in
; Links-show-extra                                ; indicates if we should have extra links (activity-actor, iamwhat-actor, ...) always visible

globals
[
  actor-inspection-selected
  activity-inspection-selected
  iamwhat-inspection-selected
  mouse-was-up? 
  last-activity
 ]

;;;;;;;;;;;;;;;;;;;;;;;
;;; Main Procedures ;;;
;;;;;;;;;;;;;;;;;;;;;;;


;; spring layout of infection tree while in tree mode
;; otherwise, layout all nodes and friendships
to do-layout
    repeat 5 [layout-spring actors friendships 0.03 20 20]
end

; responsible for executing one time tick in the model
to do-tick
  type "\n\nDifussing activities:\n"
  set last-activity diffuse-activity
  if last-activity != nobody [
    ;affect-relatinships-by-activity last-activity
  ]
  
  ask actors  with [effect-left > 0 ][
    set effect-left effect-left - 1
  ]

  reset-actors
  ask n-of 3 actors[
    set shape "face happy"
    set size ACTOR_SIZE_ACTIVE
    set effect-left 5
    set color blue + 2
  ]
  display
end

; This function recovers (heals) system (network) members
; in this case it includes only actors:
;   - they get reduced price on both absorption and emittion of activities for specified amount over the system tick
to recover-energies
  ask actors[
    set price-absorbed (price-absorbed - Actor-price-absorption-restitution)
    set price-emitted (price-emitted - Actor-price-emission-restitution)
  ]
end

to reset-actors
  ask actors  with [effect-left <= 0 ][
    set shape ACTOR_SHAPE_NEUTRAL
    set size ACTOR_SIZE_NEUTRAL
    set color blue
  ]
end

to dispatch-activity
  
end

; this function resets the history of the model and starts everything from the beginning but without changin structure or any randomly choosen initial parameters
to rest-history
end

; This is a on-mouse-click function (we add extra guarding variable to switch mouse-down? into mouse-click behaviour
to inspect-system
  ifelse (mouse-down?)
  [
    if (mouse-was-up?)[
      ; It checks what actor did we click on and then it shows info about it
      let nearest-actors actors with [distancexy-nowrap mouse-xcor mouse-ycor < 5]
      ifelse any? nearest-actors
      [
        ask one-of nearest-actors
        [
          display-friendship-of-actor
        ]
        display
      ][
        set actor-inspection-selected nobody      
      ]

      ; It checks what activity did we click on and then it shows info about it
      let nearest-activities activities with [distancexy-nowrap mouse-xcor mouse-ycor < 5]
      ifelse any? nearest-activities
      [
        ask one-of nearest-activities
        [
          display-actors-of-activity
        ]
        display
      ][
        set activity-inspection-selected nobody      
      ]

      ; It checks what iamwhat did we click on and then it shows info about it
      let nearest-iamwhats iamwhats with [distancexy-nowrap mouse-xcor mouse-ycor < 5]
      ifelse any? nearest-iamwhats
      [
        ask one-of nearest-iamwhats
        [
          display-links-of-iamwhat
        ]
        display
      ][
        set iamwhat-inspection-selected nobody      
      ]
    ]
    set mouse-was-up? false
  ][
    set mouse-was-up? true
  ]  
end

; displays the friendship of an actor
to display-friendship-of-actor
  if(actor-inspection-selected != nobody)[
    set color color - 2
    set size size - 2
    ask friendship-neighbors[
      set color color - 2
    ]
    ask my-friendships [
      set color color - 2
      ; friendships are always visible
      ;if(Links-show-extra = false)[set hidden? true]
    ]
  ]

  set actor-inspection-selected self

  set color color + 2
  set size size + 2
  ask friendship-neighbors[
    set color color + 2
  ]
  ask my-friendships [
    set color color + 2
    set hidden? false
  ]
end

; displays the friendship of an actor
to display-actors-of-activity
  if(activity-inspection-selected != nobody)[
    set color color - 2
    set size size - 2
    ; equivalent to command link-neighbors
    ; Reports the agentset of all (actors) turtles found at the other end of undirected links connected to this turtle.
    
    ; equivalent to command in-<breed>-neighbors
    ask in-activity-actor-neighbors[
      set color color - 2
    ]
    ; equivalent to command out-<breed>-neighbors
    ask out-activity-actor-neighbors[
      set color color - 2
    ]
    ; equivalent to command my-out-<breeds>
    ask my-out-activity-actors [
      set color color - 2
      if(Links-show-extra = false)[set hidden? true]
    ]
    ; equivalent to command my-in-<breeds>
    ask my-in-activity-actors [
      set color color - 2
      if(Links-show-extra = false)[set hidden? true]
    ]
  ]

  set activity-inspection-selected self
 
  set color color + 2
  set size size + 2
  ; equivalent to command link-neighbors
  ; Reports the agentset of all (actors) turtles found at the other end of undirected links connected to this turtle.

  ; equivalent to command in-<breed>-neighbors
  ask in-activity-actor-neighbors[
    set color color + 2
  ]
  ; equivalent to command out-<breed>-neighbors
  ask out-activity-actor-neighbors[
    set color color + 2
  ]
  ; equivalent to command my-out-<breeds>
  ask my-out-activity-actors [
    set color color + 2
    set hidden? false
  ]
  ; equivalent to command my-in-<breeds>
  ask my-in-activity-actors [
    set color color + 2
    set hidden? false
  ]
end

; displays all links to selected iamwhat
; it displays links to actors that are interested in it, but it will display later activities also, etc
to display-links-of-iamwhat
  type "iamwhat-inspection-selected = " type iamwhat-inspection-selected type "\n"
  if(iamwhat-inspection-selected != 0 or member? iamwhat-inspection-selected iamwhats)[
    ask iamwhat-inspection-selected[
      set color color - 2
      set size size - 2
      ask iamwhat-actor-neighbors[
        set color color - 2
      ]
      ask my-iamwhat-actors [
        set color color - 2
        if(Links-show-extra = false)[set hidden? true]
      ]
    ]
  ]
  
  ifelse(iamwhat-inspection-selected = self)[
    set iamwhat-inspection-selected nobody
  ][
    set color color + 2
    set size size + 2
    ask iamwhat-actor-neighbors[
      set color color + 2
    ]
    ask my-iamwhat-actors [
    set color color + 2
    set hidden? false
    ]
  ]
end
@#$#@#$#@
GRAPHICS-WINDOW
336
10
916
611
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
278
53
311
203
actors-num
actors-num
0
100
27
1
1
NIL
VERTICAL

SLIDER
12
442
317
475
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
6
47
246
80
Reset History
rest-history
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
7
94
123
127
One Tick
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
129
94
246
127
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
170
134
246
167
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
6
10
321
43
Setup Actors, Friendships, Activities, IAmWhat
setup-actors-and-friendships
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
14
421
164
439
Friendships:
11
23.0
1

BUTTON
928
13
1052
46
Inspect System
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

BUTTON
8
136
122
169
Load Activities
load-activity-types
NIL
1
T
OBSERVER
NIL
A
NIL
NIL
1

SLIDER
11
533
319
566
activity-emission-probability
activity-emission-probability
0
1
0.14
0.01
1
NIL
HORIZONTAL

TEXTBOX
22
512
172
530
Activities:
11
44.0
1

SLIDER
11
573
319
606
activity-acceptance-probability
activity-acceptance-probability
0
1
0.2
0.01
1
NIL
HORIZONTAL

SLIDER
9
211
314
244
actor-price-absorption-limit
actor-price-absorption-limit
0
5
4.7
0.1
1
NIL
HORIZONTAL

TEXTBOX
20
191
170
209
Actors:
11
0.0
1

SLIDER
9
289
314
322
actor-price-emission-limit
actor-price-emission-limit
0
5
2.8
0.1
1
NIL
HORIZONTAL

BUTTON
954
257
1077
290
dispatch-activity
dispatch-activity
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
9
251
314
284
Actor-price-absorption-restitution
Actor-price-absorption-restitution
0
10
9
0.02
1
NIL
HORIZONTAL

SLIDER
10
328
314
361
Actor-price-emission-restitution
Actor-price-emission-restitution
0
10
1.42
0.02
1
NIL
HORIZONTAL

SLIDER
11
369
170
402
Actor-iamwhat-num
Actor-iamwhat-num
0
5
2
1
1
WHATs
HORIZONTAL

SWITCH
929
55
1096
88
Links-show-extra
Links-show-extra
1
1
-1000

@#$#@#$#@
## WHAT IS IT?

This model is a model of friendship

## HOW IT WORKS


## HOW TO USE IT


## THINGS TO NOTICE

## EXTENDING THE MODEL


## RELATED MODELS


## COPYRIGHT AND LICENSE

Copyright 20013 Sasha Rudan, Oslo University.

![CC BY-NC-SA 3.0](http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png)

This work is licensed under the Creative Commons Attribution-NonCommercial-ShareAlike 3.0 License.  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/3.0/ or send a letter to Creative Commons, 559 Nathan Abbott Way, Stanford, California 94305, USA.
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
