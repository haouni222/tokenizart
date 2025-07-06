Pour utiliser le token, vous devez disposer d'un portefeuille Metamask disposant de monnaie pour effectuer des generation ou transfert.

Le token est lui construit a partir des standards ERC721 avec l'addon BEP721 Et les fonctionalites de securites d'OpenZepplin (Permetant la gestion des droits et la securite)

Le contrat est plutot simple, un role est disponible, le MINTER ROLE 

Je n'ai implementer que de tres simple fonctions pour demontrer que le mint de NFT fonctionne

perm_on_off Pour autoriser un user a minter ou lui retirer le droit (Adresse acc(Portemonnaie), Boolean On ou Off)

Mint Function qui demande le role de MINTER (A quel adresse/beneficiaire souhaitons nous minter un nouvel NFT)

Enfin la fonction supportinterface qui est importee de base pas les deux imports dans le Overide, me permet juste d'eviter le conflit de version entre les deux, probleme de deployement de contract sans ca.

Enfin les standards les standards ERC721 implementes des fonctions tres utiles directement, tel que des getters, des transferts etc...


