-module(lotr_questions_easy).
-export([get_questions/0]).

-record(question, {prompt, answer}).
get_questions() ->
    [
        #question{prompt = "Where does Frodo live?: \n(a) Rohan\n(b) Shire\n(c) Pelinor Fields\n\n", answer = "b"},
        #question{prompt = "How many people are there in the fellowship?: \n(a) 7\n(b) 10\n(c) 9\n\n", answer = "c"},
        #question{prompt = "What is the name of the mine that the Fellowship travels through?\n(a) Moria\n(b) Argonath\n(c) Mount Doom\n\n", answer = "a"},
        #question{prompt = "Who is the wizard who visits the Shire?\n(a) Morgoth\n(b) Gandalf\n(c) Saurmon\n\n", answer = "b"},
        #question{prompt = "What is the name of the horse that accompanies the Fellwoship?\n(a) Garth\n(b) Brego\n(c) Bill\n\n", answer = "c"},
        #question{prompt = "Where does Elrond live?\n(a) Argonath\n(b) Rivindell \n(c) Rohan\n\n", answer = "b"},
        #question{prompt = "Who is Frodo's Gardener?\n(a) Samwise Gamgee\n(b) Fatty Lumpkin\n(c) Lotho Baggins\n\n", answer = "a"},
        #question{prompt = "How many rings of power were given to the Elves?\n(a) 5\n(b) 3\n(c) 7\n\n", answer = "b"},
        #question{prompt = "How many rings of power were given to the Dwarves?\n(a) 9\n(b) 7\n(c) 11\n\n", answer = "b"},
        #question{prompt = "How many rings of power were given to Men?\n(a) 9\n(b) 3\n(c) 10\n\n", answer = "a"},
        #question{prompt = "Where was Sauron's ring forged?\n(a) Khazad-Dum\n(b) Mordor\n(c) Dale\n\n", answer = "b"},
        #question{prompt = "What is the name of the mountain pass that the Fellowship attempts to travel through?\n(a) Caradhras\n(b) Arnor\n(c) Numenor\n\n", answer = "a"},
        #question{prompt = "Who is Théodred?\n(a) a Hobbit who works at the Green Dragon\n(b) First Steward of Gondor\n(c) Son of Théoden \n\n", answer = "c"},
        #question{prompt = "Who goes by the nickname 'Strider?\n(a) Elendil\n(b) Bormir\n(c) Aragorn\n\n", answer = "c"},
        #question{prompt = "Who did Frodo used to steal mushrooms from?\n(a) Farmer Eowyn\n(b) Farmer Maggot\n(c) Farmer Gaffer\n\n", answer = "b"},
        #question{prompt = "How many hobbits were part of the Fellowhship?\n(a) 3\n(b) 7\n(c) 4\n\n", answer = "c"},
        #question{prompt = "What is the name of the city Gandalf was supposed to meet Frodo?\n(a) Bree\n(b) Osgiliath\n(c) Khad\n\n", answer = "a"},
        #question{prompt = "Who is the king of Rohan?\n(a) Gloin\n(b) Glorfindel\n(c) Théoden\n\n", answer = "c"},
        #question{prompt = "Where was the Council of Elrond located?\n(a) Weathertop\n(b) Rivendell\n(c) Minis Tirith\n\n", answer = "b"},
        #question{prompt = "What alias did Frodo use when traveling to Bree?\n(a) Slim Shady\n(b) Mr. Proudfeet\n(c) Mr. Underhill\n\n", answer = "c"}
    ].