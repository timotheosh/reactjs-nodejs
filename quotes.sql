CREATE TABLE quotes
(
    id SERIAL PRIMARY KEY,
    author VARCHAR(255),
    quote VARCHAR(1000)
);

INSERT INTO quotes (author, quote) VALUES
    ('Plato', 'No one is more hated than he who speaks the truth.'),
    ('Plato', 'Good people do not need laws to tell them to act responsibly, while bad people will find a way around the laws.'),
    ('Lord Acton', 'Liberty becomes a question of morals more than of politics.'),
    ('Lord Acton', 'Property, not conscience, is the basis of liberty. For the defence of conscience need not arise. Property is always exposed to interference. It is the constant object of policy.'),
    ('John Calvin', 'Humility is the beginning of true intelligence.'),
    ('John Calvin', 'Peace is not to be purchased by the sacrifice of truth.'),
    ('Bertrand Russell', 'The whole problem with the world is that fools and fanatics are always so certain of themselves, and wiser people so full of doubts.
'),
    ('Bertrand Russell', 'Men are born ignorant, not stupid. They are made stupid by education.'),
    ('John McCarthy', 'LISP is now the second oldest programming language in present widespread use (after FORTRAN)... Its core occupies some kind of local optimum in the space of programming languages given that static friction discourages purely notational changes. Recursive use of conditional expressions, representation of symbolic information externally by lists and internally by list structure, and representation of program in the same way will probably have a very long life.'),
    ('John McCarthy', 'One can even conjecture that Lisp owes its survival specifically to the fact that its programs are lists, which everyone, including me, has regarded as a disadvantage.'),
    ('Edsger Dijkstra', 'Computer science is no more about computers than astronomy is about telescopes.'),
    ('Edsger Dijkstra', 'Object-oriented programming is an exceptionally bad idea which could only have originated in California.'),
    ('Edsger Dijkstra', 'Programming is one of the most difficult branches of applied mathematics; the poorer mathematicians had better remain pure mathematicians.'),
    ('Edsger Dijkstra', 'Mathematicians are like managers - they want improvement without change.'),
    ('Alan Kay', 'Computer science inverts the normal. In normal science, you''re given a world, and your job is to find out the rules. In computer science, you give the computer the rules, and it creates the world.'),
    ('Alan Kay', 'I invented the term object oriented, and I can tell you that C++ wasn''t what I had in mind.'),
    ('Rich Hickey', 'Design is to take things apart in such a way that they can be put back together'),
    ('Rich Hickey', 'Simplicity is hard work. But in the long haul the person with a simpler system is gonna wipe the plate with you. Because they can change things when you are struggling to push elephants around'),
    ('Larry Wall', 'You can’t change the past. You can’t even change the future, in the sense that you can only change the present one moment at a time, stubbornly, until the future unwinds itself into the stories of our lives.'),
    ('Larry Wall', 'True greatness is measured by how much freedom you give to others, not by how much you can coerce others to do what you want.'),
    ('Larry Wall', 'The problem with being consistent is that there are lots of ways to be consistent, and they’re all inconsistent with each other');
