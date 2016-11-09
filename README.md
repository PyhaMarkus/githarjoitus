Linux palvelimet - Harjoitus 5
====================

Tehtävänanto:
---------------------
h5. Tee moduli git-varastoon ja kirjoita raportti sinne MarkDownilla.

Update: Bonustehtävänä voit kokeilla kloonata uusi modulisi vasta bootatulle live-USB:lle.

Tehtävien ohje otettu: http://terokarvinen.com/2016/aikataulu-palvelinten-hallinta-ict4tn022-1-5-op-uusi-ops-loppusyksy-2016

Harjoituksessa käytetty laitteisto/ohjelmisto:
---------------------
* 16GB Kingston DataTraveler 100 G3 USB 3.0 muistitikku
* Tietokone (Asus Z170-A, i7-6700K , 16GB DDR4 3200MHz, Evga 1070 sc)
* Oheishärpäkkeet
* Xubuntu 16.04.1 LTS

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
Moduulina käytän edellisessä harjoitus 4:ssä luomaani moduulia, mutta teen siihen pieniä muutoksia.

Navigoin kansioon "harjoitus"ja tein sinne seuraavat kansiot:

$ mkdir modules

$ mkdir asennus

$ mkdir manifests

> xubuntu@xubuntu:~/harjoitus/githarjoitus/modules/asennus/manifests$ 

Manifests kansioon tein nanolla init.pp tiedoston.

$ nano init.pp

Kyseiseen tiedostoon tein saman moduulin, kuin harjoitus 4:ssä, paitsi poistin siitä Gimpin ja Vlc:n asentavat package-osiot, jotta moduulin testaaminen nopeutuu. Muuten se on sama.

Loin myös käyttäjälle kotihakemiston apachea varten:

$ mkdir /home/xubuntu/public_html

Tämän jälkeen tallensin muokkaukset repositorioon komennoilla:

$ git add .

$ git commit

Aukesi ikkuna, johon kirjoitin pyydetysti viestin muokkauksen sisällöstä.

$ git pull

$ git push

Minulta kysyttiin terminaalissa GitHubin käyttäjätunnusta ja salasanaa. Syötettyäni ne, päivitin Gitin repositorion selaimessani, ja tiedot olivat päivittyneet sinne.


Yhteenveto:
---------------------
Tässä harjoituksessa tehtiin onnistuneesti moduuli gitvarastoon, josta sitten kirjoitettiin myös raportti MarkDownilla. Ongelmia harjoituksen aikana esiintynyt ollenkaan.

Lähteet:
---------------------

Harjoituksen ohjeet

URL: http://terokarvinen.com/2016/aikataulu-palvelinten-hallinta-ict4tn022-1-5-op-uusi-ops-loppusyksy-2016

Githubissa julkaiseminen

URL: http://terokarvinen.com/2016/publish-your-project-with-github

MarkDown apua

URL: https://daringfireball.net/projects/markdown/basics
