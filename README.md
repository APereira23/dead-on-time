<strong>Dead on Time</strong> is a text-based adventure game written using BASH scripting!

<em>It's monday morning and you are late for work!!! Still half asleep, you jump up from bed, hastingly put on some clothes, hop on your trusty old bicycle and start pedaling away as fast as you can.
<br>
Will you get to work on time?
<br>
Will you even make it there?
<br>
Everything's up to you...</em>



![image](https://user-images.githubusercontent.com/99130611/193564090-2285345d-2cb6-44ac-ae56-59cbebf39eda.png)

![image](https://user-images.githubusercontent.com/99130611/193564842-edd23f61-38b3-4d29-b77c-d3561d347589.png)

![image](https://user-images.githubusercontent.com/99130611/193565485-49a3a1de-ccf6-4ecf-af9f-6e6795d8238c.png)


This was my first full coding project. At the time, it was envisioned as a means to practice some scripting basics, such as working with variables and conditional statements, all while keeping it fun and creative.

Some of the biggest challenges presented by this project were, at first, figuring out how to keep track of the player's Health and Time variables throughout the game, all while accounting for potential forks in the game progression map. These were dealt with by dividing the game into several scripts, one for each level, and tying them all together through the export command. Moreover, at the time I still didn't know anything about loops, so implementing the final boss fight was tough. As of the latest push, the loop has been implemented and the fight seems to be working ok, going on indefinately until the player wins or their hp/time values reach zero.

In the end, some ideas for alternate paths ended up getting scraped, because by that point the game was taking too much time to complete (and starting to feel like a procrastination crutch, keeping me from moving on with the scheduled curriculum). Nonetheless, the final build still has choices that effect noticeable changes on where you end up cycling through and what dangers you may face!   



<strong>How to Play</strong>:

- Fork the repository;
- In your command terminal, go to the game folder and type:
  <br>
    ```bash
    bash t00e.sh
    ```
  <br>
- Note: TiMidity++ package is required to play the sound files. Installation can be done through the command-line with the following command:
  <br>
    ```bash
    sudo apt install timidity
    ```
  <br>
<br>
How Long to Beat: ~10/15 minutes

