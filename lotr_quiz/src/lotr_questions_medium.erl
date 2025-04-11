-module(lotr_questions_medium).
-export([get_questions/0]).

-record(question, {prompt, answer}).

get_questions() ->
    [
        #question{prompt = "Where does Barliman Butterbur work at?\n(a) The Prancing Pony\n(b) The Green Dragon\n(c) Worm Tongue Inn\n\n", answer = "a"},
        #question{prompt = "Who is Théodred\n(a) Son of Eomer\n(b) Son of Théoden\n(c) Son of Theothor\n\n", answer = "b"},
        #question{prompt = "What is the name of the horse Gandalf rode?\n(a) Bill\n(b) Haste\n(c) Shadowfax\n\n", answer = "c"},
        #question{prompt = "How old was Bilbo when he left the Shire to live in Rivendell?\n(a) 45\n(b) 69\n(c) 111\n\n", answer = "c"},
        #question{prompt = "Which of the following is a language the Elves speak?\n(a) Quenya\n(b) Farsi\n(c) Dwarvish\n\n", answer = "a"},
        #question{prompt = "What's the name of the first elf that Samwise meets?\n(a) Haldir\n(b) Arwen\n(c) Gildor\n\n", answer = "c"},
        #question{prompt = "Which is the advisor to Théodon?\n(a) Faramir\n(b) Sarumon the Wise\n(c) Grima Wormtongue\n\n", answer = "c"},
        #question{prompt = "What was Minus Morgul called before being conqured?\n(a) Minas Ecthelion\n(b) Minas Cirith\n(c) Minus Ithil\n\n", answer = "c"},
        #question{prompt = "Who is the Lord and Lady of Lorien\n(a) Celeborn & Galadriel\n(b) Glorfindel & Iemna\n(c) Celebrimbor & Sythia\n\n", answer = "a"},
        #question{prompt = "What is the name of the spider that tries to kill Frodo and Sam?\n(a) Garnith\n(b) Groppy\n(c) Shelob\n\n", answer = "c"},
        #question{prompt = "Which is NOT a son of Elrond?\n(a) Elladan\n(b) Gil-Galad\n(c) Elrohir\n\n", answer = "b"},
        #question{prompt = "What is the name of the Ent that helps Merry and Pippin?\n(a) Treeman\n(b) Treebeard\n(c) Treefriend\n\n", answer = "b"},
        #question{prompt = "Which office did Frodo hold in Hobbiton after the demise of Mordor?\n(a) Sheriff\n(b) Mayor\n(c) King\n\n", answer = "b"},
        #question{prompt = "Who does Eowyn marry?\n(a) Pippin\n(b) Gimli\n(c) Faramir\n\n", answer = "c"},
        #question{prompt = "Who rides Oliphants?\n(a) The Orcs\n(b) The Gondorians\n(c) The Haradrim\n\n", answer = "c"},
        #question{prompt = "What is the name of the massive gate crasher used againts Minis Tirith\n(a) Grond\n(b) Shagrat\n(c) Pelinor\n\n", answer = "a"},
        #question{prompt = "How many eagles did Gandalf request pick up Frodo and Sam?\n(a) 2\n(b) 1\n(c) 3\n\n", answer = "c"},
        #question{prompt = "Who had the ring one ring the longest?\n(a) Gollum\n(b) Anduin\n(c) Frodo\n\n", answer = "b"},
        #question{prompt = "Who cut off Sauron's finger?\n(a) Elendil\n(b) Isildir\n(c) Elrond\n\n", answer = "b"},
        #question{prompt = "Who of the following killed a Balrog?\n(a) Glamring\n(b) Thor\n(c) Glorfindel\n\n", answer = "c"}
    ].