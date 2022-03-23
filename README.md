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
  
<div class="language-plaintext highlighter-rouge"><div class="highlight"><pre class="highlight">
<code>https://pisaucer.github.io/staticmon/pokemon/150</code>
</pre></div></div>
  
  <div class="language-json highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="p">{</span><span class="w">
  </span><span class="nl">"number"</span><span class="p">:</span><span class="w"> </span><span class="s2">"150"</span><span class="p">,</span><span class="w">
  </span><span class="nl">"name"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Mewtwo"</span><span class="p">,</span><span class="w">
  </span><span class="nl">"generation"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span><span class="w">
  </span><span class="nl">"description"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Said to rest quietly in an undiscovered cave, this POKéMON was created solely for battling."</span><span class="p">,</span><span class="w">
  </span><span class="nl">"species"</span><span class="p">:</span><span class="w"> </span><span class="s2">"Genetic"</span><span class="p">,</span><span class="w">
  </span><span class="nl">"types"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
    </span><span class="s2">"Psychic"</span><span class="w">
  </span><span class="p">],</span><span class="w">
  </span><span class="nl">"abilities"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
    </span><span class="nl">"normal"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
      </span><span class="s2">"Pressure"</span><span class="w">
    </span><span class="p">],</span><span class="w">
    </span><span class="nl">"hidden"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
      </span><span class="s2">"Unnerve"</span><span class="w">
    </span><span class="p">]</span><span class="w">
  </span><span class="p">},</span><span class="w">
  </span><span class="nl">"height"</span><span class="p">:</span><span class="w"> </span><span class="s2">"6'07</span><span class="se">\"</span><span class="s2">"</span><span class="p">,</span><span class="w">
  </span><span class="nl">"weight"</span><span class="p">:</span><span class="w"> </span><span class="s2">"269 lbs."</span><span class="p">,</span><span class="w">
  </span><span class="nl">"eggGroups"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
    </span><span class="s2">"Undiscovered"</span><span class="w">
  </span><span class="p">],</span><span class="w">
  </span><span class="nl">"gender"</span><span class="p">:</span><span class="w"> </span><span class="p">[],</span><span class="w">
  </span><span class="nl">"family"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
    </span><span class="nl">"id"</span><span class="p">:</span><span class="w"> </span><span class="mi">77</span><span class="p">,</span><span class="w">
    </span><span class="nl">"evolutionStage"</span><span class="p">:</span><span class="w"> </span><span class="mi">1</span><span class="p">,</span><span class="w">
    </span><span class="nl">"evolutionLine"</span><span class="p">:</span><span class="w"> </span><span class="p">[</span><span class="w">
      </span><span class="s2">"Mewtwo"</span><span class="w">
    </span><span class="p">]</span><span class="w">
  </span><span class="p">},</span><span class="w">
  </span><span class="nl">"sprites"</span><span class="p">:</span><span class="w"> </span><span class="p">{</span><span class="w">
    </span><span class="nl">"default"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://pisaucer.github.io/staticmon/images/150.png"</span><span class="p">,</span><span class="w">
    </span><span class="nl">"shiny"</span><span class="p">:</span><span class="w"> </span><span class="s2">"https://pisaucer.github.io/staticmon/images/shiny/150.png"</span><span class="w">
  </span><span class="p">},</span><span class="w">
  </span><span class="nl">"isStarter"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="p">,</span><span class="w">
  </span><span class="nl">"isLegendary"</span><span class="p">:</span><span class="w"> </span><span class="kc">true</span><span class="p">,</span><span class="w">
  </span><span class="nl">"isMythical"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="p">,</span><span class="w">
  </span><span class="nl">"isUltraBeast"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="p">,</span><span class="w">
  </span><span class="nl">"isMega"</span><span class="p">:</span><span class="w"> </span><span class="kc">false</span><span class="w">
</span><span class="p">}</span><span class="w">
</span></code></pre></div></div>
  
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

<div class="language-json highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="p">{</span><span class="w">
  </span><span class="nl">"gen1"</span><span class="p">:</span><span class="w"> </span><span class="mi">151</span><span class="p">,</span><span class="w">
  </span><span class="nl">"gen2"</span><span class="p">:</span><span class="w"> </span><span class="mi">100</span><span class="p">,</span><span class="w">
  </span><span class="nl">"gen3"</span><span class="p">:</span><span class="w"> </span><span class="mi">135</span><span class="p">,</span><span class="w">
  </span><span class="nl">"gen4"</span><span class="p">:</span><span class="w"> </span><span class="mi">107</span><span class="p">,</span><span class="w">
  </span><span class="nl">"gen5"</span><span class="p">:</span><span class="w"> </span><span class="mi">156</span><span class="p">,</span><span class="w">
  </span><span class="nl">"gen6"</span><span class="p">:</span><span class="w"> </span><span class="mi">72</span><span class="p">,</span><span class="w">
  </span><span class="nl">"gen7"</span><span class="p">:</span><span class="w"> </span><span class="mi">86</span><span class="p">,</span><span class="w">
  </span><span class="nl">"total"</span><span class="p">:</span><span class="w"> </span><span class="mi">807</span><span class="w">
</span><span class="p">}</span><span class="w">
</span></code></pre></div></div>
  
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

<div class="language-json highlighter-rouge"><div class="highlight"><pre class="highlight"><code><span class="p">[</span><span class="w">
    </span><span class="s2">"starter"</span><span class="p">,</span><span class="w">
    </span><span class="s2">"legendary"</span><span class="p">,</span><span class="w">
    </span><span class="s2">"mythical"</span><span class="p">,</span><span class="w">
    </span><span class="s2">"ultraBeast"</span><span class="p">,</span><span class="w">
    </span><span class="s2">"mega"</span><span class="w">
</span><span class="p">]</span><span class="w">
</span></code></pre></div></div>
  
</p>
</details>

---
Pokemon and Pokemon character names are trademarks of Nintendo.

<style>
summary {
  display: list-item;
}
</style>
