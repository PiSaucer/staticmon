# Staticmon
Simple Static JSON Files For Pokemon Data

## Get Pokemon Data

This returns an json file of Pokemon object containing all the information of the Pokemon specified by the Pokedex Number.

```
https://pisaucer.github.io/staticmon/pokemon/:number/:min
```

<details>
<summary>Example Response</summary>
<p>
  
<pre>
  <code>
https://pisaucer.github.io/staticmon/pokemon/150
  </code>
</pre>

<pre>
  <code>
{
  "number": "150",
  "name": "Mewtwo",
  "generation": 1,
  "description": "Said to rest quietly in an undiscovered cave, this POKéMON was created solely for battling.",
  "species": "Genetic",
  "types": [
    "Psychic"
  ],
  "abilities": {
    "normal": [
      "Pressure"
    ],
    "hidden": [
      "Unnerve"
    ]
  },
  "height": "6'07\"",
  "weight": "269 lbs.",
  "eggGroups": [
    "Undiscovered"
  ],
  "gender": [],
  "family": {
    "id": 77,
    "evolutionStage": 1,
    "evolutionLine": [
      "Mewtwo"
    ]
  },
  "sprites": {
    "default": "https://pisaucer.github.io/staticmon/images/150.png",
    "shiny": "https://pisaucer.github.io/staticmon/images/shiny/150.png"
  },
  "isStarter": false,
  "isLegendary": true,
  "isMythical": false,
  "isUltraBeast": false,
  "isMega": false
}
  </code>
</pre>
  
</p>
</details>

### Data Structure

|Field|Type|Description|
|:-|:-|:-|
|`number`|integer|The Pokedex number|
|`name`|string|The name of the Pokemon|
|`generation`|integer|The generation the Pokemon was first discovered|
|`description`|string|The description of the Pokemon|
|`species`|string|The species the Pokemon belongs to|
|`types`|array of [Pokemon Types](https://pisaucer.github.io/staticmon/types/)|The type of the Pokemon|
|`abilities`|array of normal and hidden Pokemon abilities|The abilities of the Pokemon|
|`height`|string|The height of the Pokemon in feet|
|`weight`|string|The weight of the Pokemon in pounds|
|`eggGroups`|array of [Pokemon Egg Groups](https://pisaucer.github.io/staticmon/eggGroups/)|The egg groups the Pokemon belong to|
|`gender`|array of integer|The percentage change of male and female of the Pokemon|
|`family`|[Pokemon Family Object](#pokemon-family-structure)|The family id, evolution stage and evolution line of the Pokemon|
|`sprites`|array of strings|The URLs of an images of the Pokemon (Default and Shiny)|
|`isStarter`|bool|Is it a starter Pokemon?|
|`isLegendary`|bool|Is it a legendary Pokemon?|
|`isMythical`|bool|Is it a mythical Pokemon?|
|`isUltraBeast`|bool|Is it an ultra beast Pokemon?|
|`isMega`|bool|Is it a mega evolved form of the Pokemon?|

### Pokemon Family Structure

|Field|Type|Description|
|:-|:-|:-|
|`id`|integer|The id of Pokemon family|
|`evolutionStage`|integer|The evolved stage of the Pokemon in its evolution line|
|`evolutionLine`|array of strings|The list of Pokemon in its evolution line, in order|

## Get Pokemon Count

This json file returns a Pokemon Counts object containing the number of Pokemon in each generation and the total number of Pokemon in the Pokemon World.

```
https://pisaucer.github.io/staticmon/pokemon/counts/
```

<details>
<summary>Example Response</summary>
<p>

<pre>
  <code>
{
  "gen1": 151,
  "gen2": 100,
  "gen3": 135,
  "gen4": 107,
  "gen5": 156,
  "gen6": 72,
  "gen7": 86,
  "total": 807
}
  </code>
</pre>
  
</p>
</details>

## Categories

This json file returns an array of Pokemon Categories discovered in the Pokémon World.

```
https://pisaucer.github.io/staticmon/categories/
```

<details>
<summary>Example Response</summary>
<p>

<pre>
  <code>
[
    "starter",
    "legendary",
    "mythical",
    "ultraBeast",
    "mega"
]
  </code>
</pre>
  
</p>
</details>

<style>
  .markdown-body pre {
    padding-bottom: 0px;
    padding-top: 0px;
  }
</style>

---
Pokemon and Pokemon character names are trademarks of Nintendo.
