-module(lotr_quiz).
-export([main/0]).

% --- Corrected Imports ---
-import(lists, [shuffle/1, take/2, reverse/1]).
-import(io, [format/2, get_line/1]). 
-import(string, [strip/1, lower/1]). 

% format for questions and answer
-record(question, {prompt, answer}).

% --- Main Logic ---

main() ->
    io:format("Welcome to the Lord of the Rings Knowledge Challenge!!!~n~n"),
    io:format("Based off of the books let's see how much you know.~n~n"),
    io:format("Mára Valto~n~n"),
    game_loop().

game_loop() ->
    case get_difficulty() of
        {error, invalid_input} ->
            io:format("Exiting due to invalid difficulty selection.~n");
        {ok, Mode, Questions} ->
            TotalQuestions = 10,
            ShuffledQuestions = take(TotalQuestions, shuffle(Questions)),
             if length(ShuffledQuestions) < TotalQuestions ->
                 io:format("Warning: Not enough questions available for difficulty ~p. Using ~w questions.~n",
                           [Mode, length(ShuffledQuestions)]);
                true -> ok
             end,
            if ShuffledQuestions == [] ->
                 io:format("No questions available for difficulty ~p. Cannot start game.~n", [Mode]);
               true ->
                 {FinalScore, QuestionsAndAnswers} = ask_questions(ShuffledQuestions),
                 io:format("~nQuiz Complete! Your final score: ~w / ~w~n", [FinalScore, length(ShuffledQuestions)]),
                 see_answers_option(QuestionsAndAnswers),
                 play_again_option()
            end
    end.

    get_difficulty() ->
        io:format(" Choose your difficulty Easy, Medium, or Hard (E, M, H): "),
        case io:get_line("") of
            Line when is_list(Line) ->
                CleanInput = string:lower(string:strip(Line)),
                case CleanInput of
                    "e" -> {ok, easy, lotr_questions_easy:get_questions()};
                    "m" -> {ok, medium, lotr_questions_medium:get_questions()};
                    "h" -> {ok, hard, lotr_questions_hard:get_questions()};
                    _ ->
                        io:format("Invalid input '~s'. Please choose only E, M, or H.~n", [CleanInput]),
                        get_difficulty() % Retry on bad input
                end;
    
            eof ->
                io:format("End of input detected.~n"),
                {error, invalid_input};
    
            {error, Reason} ->
                io:format("Error reading difficulty: ~p~n", [Reason]),
                {error, invalid_input}
        end.
    

% --- ask_questions 
ask_questions(Questions) ->
    ask_questions(Questions, 1, 0, []).

ask_questions([], _Index, Score, QuestionsAndAnswers) ->
    {Score, lists:reverse(QuestionsAndAnswers)}; % Return score and reversed list

ask_questions([#question{prompt = Prompt, answer = CorrectLetter}|Rest], Index, Score, QuestionsAndAnswers) ->
    % Prompt already contains the question and options (a, b, c)
    io:format("Question ~w:~n~s", [Index, Prompt]), % Print question and options
    io:format("Your choice (a, b, or c): "), % Ask for letter choice
    case io:get_line("") of
        {ok, UserAnswerLine} ->
            UserChoice = string:lower(string:strip(UserAnswerLine)), % Clean input (strip whitespace, lower case)

            IsCorrect = case UserChoice of
                "a" -> UserChoice == CorrectLetter; % Compare with stored correct letter
                "b" -> UserChoice == CorrectLetter;
                "c" -> UserChoice == CorrectLetter;
                _   -> false % Any other input is considered incorrect
            end,

            NewScore = case IsCorrect of
                           true ->
                               io:format("Correct!~n~n"),
                               Score + 1;
                           false ->
                               % Optionally show the correct letter if they were wrong
                               io:format("Incorrect. The correct answer was: ~s~n~n", [CorrectLetter]),
                               Score
                       end,
            % Store prompt, user's choice, and correct letter for optional review
            ask_questions(Rest, Index + 1, NewScore, [{Prompt, UserChoice, CorrectLetter}|QuestionsAndAnswers]);
        eof ->
            io:format("End of input during questions.~n"),
            {Score, lists:reverse([{Prompt, "EOF", CorrectLetter}|QuestionsAndAnswers])}; % Return current state
        {error, Reason} ->
            io:format("Error reading answer: ~p~n", [Reason]),
            ask_questions(Rest, Index + 1, Score, [{Prompt, "Error", CorrectLetter}|QuestionsAndAnswers])
    end.

% --- see_answers_option updated to use get_line ---
see_answers_option(QuestionsAndAnswers) ->
    io:format("Would you like to review the answers? (y/n): "),
    case io:get_line("") of
        {ok, Line} ->
             CleanInput = string:lower(string:strip(Line)),
            case CleanInput of
                "y" -> print_questions_and_answers(QuestionsAndAnswers);
                "n" -> ok;
                _ ->
                    io:format("Invalid input. Please enter y or n.~n"),
                    see_answers_option(QuestionsAndAnswers)
            end;
         eof ->
            io:format("End of input detected.~n");
         {error, Reason} ->
             io:format("Error reading option: ~p~n", [Reason])
    end.

% --- print_questions_and_answers (Adjusted for multiple choice review) ---
print_questions_and_answers(QuestionsAndAnswers) ->
    io:format("~n--- Review Answers ---~n"),
    print_questions_and_answers(QuestionsAndAnswers, 1).

print_questions_and_answers([], _Index) ->
    io:format("--- End Review ---~n~n"),
    ok;
print_questions_and_answers([{Prompt, UserChoice, CorrectLetter}|Rest], Index) ->
    io:format("~w. Question:~n~s", [Index, Prompt]), % Show full prompt with options
    io:format("   Your Choice:    ~s~n", [UserChoice]),
    io:format("   Correct Answer: ~s~n", [CorrectLetter]),
    IsMatch = UserChoice == CorrectLetter, % Direct comparison now
    Result = if UserChoice == "EOF" -> "Skipped (EOF)";
                UserChoice == "Error" -> "Skipped (Error)";
                UserChoice /= "a" andalso UserChoice /= "b" andalso UserChoice /= "c" -> "Invalid Choice"; % Handle non a/b/c answers
                IsMatch -> "Correct";
                true -> "Incorrect"
             end,
    io:format("   Result: ~s~n~n", [Result]),
    print_questions_and_answers(Rest, Index + 1).

% --- play_again_option updated to use get_line ---
play_again_option() ->
    io:format("Would you like to play again? (y/n): "),
    case io:get_line("") of
         {ok, Line} ->
            CleanInput = string:lower(string:strip(Line)),
            case CleanInput of
                "y" -> main(); % Restart the game
                "n" -> io:format("Ná márië! (Farewell!)~n");
                _ ->
                    io:format("Invalid input '~s'. Please enter y or n.~n", [CleanInput]),
                    play_again_option()
            end;
         eof ->
             io:format("End of input detected. Farewell!~n");
         {error, Reason} ->
             io:format("Error reading option: ~p. Exiting.~n", [Reason])
    end.

% Removed get_placeholder_questions functions as we now use external modules