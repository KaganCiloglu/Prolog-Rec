% Name Surname: Kaðan Çiloðlu
% Student No: 161805016

% father(X, Y): X is Y's father.
father(selcuk, ziya).
father(selcuk, mehmet).
father(mehmet, melahat).
father(mehmet, celaleddin).
father(mehmet, mustafa).
father(mehmet, orhan).
father(mustafa, belkis).
father(mustafa, cihangir).
father(mustafa, esra).
father(mustafa, furkan).
father(celaleddin, oguz).
father(celaleddin, kagan).
father(orhan, alper).

% mother(X, Y): X is Y's mother.
mother(melahat, sinan).
mother(melahat, mahperi).
mother(melahat, kabehan).

% male(X): X is male.
male(ziya).
male(mehmet).
male(mustafa).
male(celaleddin).
male(orhan).
male(sinan).
male(cihangir).
male(furkan).
male(oguz).
male(kagan).
male(alper).

% female(X): X is female.
female(melahat).
female(mahperi).
female(kabehan).
female(belkis).
female(esra).

% parent(X, Y): X is Y's parent.
parent(X, Y):- father(X, Y).
parent(X, Y):- mother(X, Y).

% sister(X, Y): X is Y's sister.
sister(X, Y):- parent(Z, X), parent(Z, Y), female(X), not(X = Y).

% brother(X, Y): X is Y's brother.
brother(X, Y):- parent(Z, X), parent(Z, Y), male(X), not(X = Y).

% uncle(X, Y): X is Y's uncle.
uncle(X, Y):- brother(X, Z), parent(Z, Y).

% grand_uncle(X, Y): X is Y's granduncle.
grand_uncle(X, Y):- uncle(X, Z), parent(Z, Y).