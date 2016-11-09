Linux palvelimet - Harjoitus 5
====================

Tehtävänanto:
---------------------
h5. Tee moduli git-varastoon ja kirjoita raportti sinne MarkDownilla.

Update: Bonustehtävänä voit kokeilla kloonata uusi modulisi vasta bootatulle live-USB:lle.

Tehtävien ohje otettu: http://terokarvinen.com/2016/aikataulu-palvelinten-hallinta-ict4tn022-1-5-op-uusi-ops-loppusyksy-2016

Alustavat valmistelut:
---------------------
Seuraavat toimet suoritan aina, kun alan tekemään linux-harjoitusten eri osioita.

Boottasin Xubuntu-livetikulle valitsemalla USB-muistitikun käynnistyksen yhteydessä bootattavaksi levyksi.  Kun kysyttiin haluanko testata Xubuntua vaiko asentaa sen, valitsin vaihtoehdon “Try Xubuntu without installing“. Lyhyen latauksen päästä pääsin työpöydälle.

Yhdistin heti kotini langattomaan verkkoon työpöydän oikeasta yläkulmasta sekä muutin näppäimmistön layoutin suomiversioksi komennolla terminaalin komennolla "$ setxkbmap fi".

Seuraavaksi syötin komennon “$ sudo apt-get update“. Kyseinen komento päivittää pakettivarastot, ja se kannattaa suorittaa aina ennen kuin hyödyntää paketinhallintaa mihinkään.

GitHub:
---------------------
Aloitin harjoituksen asentamalla gitin.

$ sudo apt-get install git

Sen jälkeen kirjauduin githubiin vanhoilla tunnuksillani ja loin uuden julkisen repositorion. https://github.com/

Loin kotihakemistooni kansion gitille, johon sitten tulen kloonaamaan repositorion, joka GitHubiin luotiin.

$ mkdir harjoitus

> /home/xubuntu/harjoitus/

Sitten muutin paikallisia git tiedostoja:

$ git config --global user.email "sähköpostiosoite"

$ git config --global user.name "PyhaMarkus"

Navigoin luomaani asennuskansioon "harjoitus" ja kloonasin repon komennolla:

$ git clone https://github.com/PyhaMarkus/githarjoitus

Vastaukseksi sain:

> Cloning into 'githarjoitus'...
> remote: Counting objects: 3, done.
> remote: Compressing objects: 100% (2/2), done.
> remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
> Unpacking objects: 100% (3/3), done.
> Checking connectivity... done.

Näyttäisi toimineen. Katsoin mitä kansiosta löytyi komennolla $ ls, ja repositorio oli siirtynyt hakemistoon oikein.

Nyt tuli luoda se tiedosto, johon laitan moduulini.

Moduuli:
---------------------





Tehtävänanto:
---------------------


### Header 3

> This is a blockquote.
> 
> This is the second paragraph in the blockquote.
>
> ## This is an H2 in a blockquote
