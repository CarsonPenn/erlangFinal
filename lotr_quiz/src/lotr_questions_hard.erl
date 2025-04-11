-module(lotr_questions_hard).
-export([get_questions/0]).

-record(question, {prompt, answer}).

get_questions() ->
    [
        #question{prompt = "What is Aragorn's Father's name?\n(a) Arathorn II\n(b) Aragon I\n(c) Aroniel\n\n", answer = "a"},
        #question{prompt = "What is the name of the Eagle King?\n(a) Thror\n(b) Thorondor\n(c) Your mom\n\n", answer = "b"},
        #question{prompt = "When did the Third Age begin?\n(a) 3000\n(b) 1972\n(c) 1308\n\n", answer = "c"},
        #question{prompt = "What is the name of the wise woman of Gondor in the houses of healing?\n(a) Freda\n(b) Ioreth\n(c) Rosemary\n\n", answer = "b"},
        #question{prompt = "What is the title of last chapter in Return of the King?\n(a) Home at last\n(b) The Grey Havens\n(c) The Road goes on\n\n", answer = "b"},
        #question{prompt = "Who plants a seedling of the White Tree in Minas Arnor?\n(a) Isildur\n(b) Aragon\n(c) Elendil\n\n", answer = "a"},
        #question{prompt = "What year was Frodo born?\n(a) 2968\n(b) 3021\n(c) 2554\n\n", answer = "a"},
        #question{prompt = "What is the name of the King of the Dead?\n(a) Argeb\n(b) Ohtar \n(c) Rioc\n\n", answer = "c"},
        #question{prompt = "What is a meeting of Ents called?\n(a) Entmoot\n(b) Entday\n(c) Ent-meet\n\n", answer = "a"},
        #question{prompt = "What is the name of the Ent that entertains Merry and Pippin during Entmoot?\n(a) High Willow\n(b) Mossytrunk\n(c) Quickbeam\n\n", answer = "c"},
        #question{prompt = "Who is lord of the Balrogs?\n(a) Sauron\n(b) Gothmog\n(c) Gilbatorix\n\n", answer = "b"},
        #question{prompt = "Who does Gorbad start a fight with in Cirith-Ungol\n(a) Lurtz\n(b) Gothmog\n(c) Shagrat\n\n", answer = "c"},
        #question{prompt = "What was the last remaining Balrog called?\n(a) Durin's Bane\n(b) Haradroth\n(c) Morgon\n\n", answer = "a"},
        #question{prompt = "What year did the Istari arrive in middle-earth?\n(a) 1972\n(b) 1000\n(c) 956\n\n", answer = "b"},
        #question{prompt = "Which is NOT a name of the 5 Istari?\n(a) Alatar\n(b) Radagast\n(c) Palandrone\n\n", answer = "a"},
        #question{prompt = "Which of the following is NOT a name that Aragon at one point goes by?\n(a) Elessar\n(b) Strider\n(c) Chosen One\n\n", answer = "c"},
        #question{prompt = "Who goes by the name 'Chief' in the Shire?\n(a) Old Took\n(b) Sarumon\n(c) Lotho\n\n", answer = "b"},
        #question{prompt = "What gift does Galadriel give Samwise when he leaves Lorien?\n(a) A dagger\n(b) A cooking pot\n(c) A pot of dirt\n\n", answer = "c"},
        #question{prompt = "Who was the first person that Smeagol killed?\n(a) Heagol\n(b) Fatty\n(c) Deagol\n\n", answer = "c"},
        #question{prompt = "Which of the following does Legolas take to the Grey Havens?\n(a) Gimli\n(b) Gandalf\n(c) Frodo\n\n", answer = "a"}
    ].